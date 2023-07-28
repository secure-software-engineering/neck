
- I changed the implementation to include `ToInsert.insert(CallSiteBB->getNextNode())` instead of the `ToInsert.insert(CallSiteBB)` where the CallSite is located. This change handles situations where the neck is located as 1st stmt in the 1st BB in the main (i.e., the case of ag.ll). However, the downside is that the next BB can be inside if-condition (i.e., the case of ag.ll), which violates the propoerty that the neck should be executed only once. To overcome this situation, we can do the following:
    - make this replacement only when the neck is in the entry BB. 
    - Check the `CallSiteBB->getNextNode()` isn't inside a condition. Or more broadly doesn't violate the neck properties.

Neck identification process:
- Taint analysis to identify `InterestingInstructions`
- Obtain the parents BBs of the `InterestingInstructions`. This will initalize `NeckCandidates`
- If the size of `NeckCandidates` is zero:
    - then there is no neck
    - else: 
        
        a) run applyFilteringRules(false) to identify the neck inside the main, but if there is no neck inside the main then,
        
        b) applyFilteringRules(true), which will look for the neck further down the call stack


The steps of applyFilteringRules:
1) If search inside the neck: 

    - make sure the `NeckCandidate` is inside the main function but if the neckcandidate is in another function, then:
        - check the neckcandidate is reachable, then replace this BB with the corresponding call site inside the main
2) Collect all neck candidates that are part of a loop (isInLoopStructue), and replace them with their corresponding Loop Exits

3) Sometimes we end up with single-instruction basic blocks that comprise an unconditional jump to the next basic block, then we replace this BB with the successor BB

4) Remove all BBs that do not dominate their successors. We verify this through 
    ```
    !dominatesSuccessors(BB) && hasSingleSuccessorThatDominatesSucessors(BB)
    ```
    But in some cases, the BB that does not dominate its single successor, but its single success does. In that case, we add this single success that dominates its successor to `NeckCandidate`

5) Remove all BBs that do not succeed a loop. (**this condition shouldn't be checked if we do it from inside main**, I need to verify that)

6) Remove all basic blocks that are not reachable from main

7) If search ouside the main:
    
    - Do the same steps in (1)

8) Compute closestNeckCandidateReachableFromEntry


```
tools/neck/neck --function-local-points-to-info-wo-globals --use-simplified-dfa -m /workpaces/neck/new_apps/squid/src/squid.ll --taint-config ../config/cmd-tool-config.json --annotate --verbose > squid_taint.log 2>&1 
```

```
tools/neck/neck --function-local-points-to-info-wo-globals --use-simplified-dfa -m /workspaces/neck/new_apps/toy_examples/toy_config_outside_main_deep.ll --taint-config ../config/cmd-tool-config.json --annotate --verbose 2>&1 | tee before_merge_func_deep.log
```

Observations:
============
1. **Squid:** I noticed the following BB that contains the neck is removed after applying the 4th filter `loop succession`. 
```
122:                                              ; preds = %120, %117, %111
  %123 = load i32, i32* @opt_create_swap_dirs, align 4, !psr.id !16512
  %124 = icmp ne i32 %123, 0, !psr.id !16513
  br i1 %124, label %125, label %153, !psr.id !16514
```
The location of this BB in the source code is [HERE](https://github.com/squid-cache/squid/blob/SQUID_3_4_10/src/main.cc#LL1454C9-L1454C29). We need to come up with a mechanism to relax this filter. 

- One solution is to disable this filter when `UseLateIntraProceduralMainReduction` is `1` **OR** check if there is a reachable BB that involves a loop and is located between this BB and the entrypoint. However, this means we need to perform interprocedural analysis.

2. It's not necessary for the neck BB outside the main to dominate subsequent BBs. There is a possibility that this BB is the last. For example, in the toy example, when there is no statement after the loop 
```
for (int i = 1; i < argc; i++) {
    strcat(concatenated, argv[i]);
  }
```

3. **bind** 
The function that contains the config parsing logic is `parse_command_line` and is called inside the main from this BB 
```
16:                                               ; preds = %2
  call void @isc_assertion_setcallback(void (i8*, i32, i32, i8*)* @assertion_failed), !dbg !74513, !psr.id !74514
  call void @isc_error_setfatal(void (i8*, i32, i8*, %struct.__va_list_tag*)* @library_fatal_error), !dbg !74515, !psr.id !74516
  call void @isc_error_setunexpected(void (i8*, i32, i8*, %struct.__va_list_tag*)* @library_unexpected_error), !dbg !74517, !psr.id !74518
  call void @named_os_init(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @program_name, i64 0, i64 0)), !dbg !74519, !psr.id !74520
  call void @dns_result_register(), !dbg !74521, !psr.id !74522
  call void @dst_result_register(), !dbg !74523, !psr.id !74524
  call void @isccc_result_register(), !dbg !74525, !psr.id !74526
  %17 = load i32, i32* @isc_mem_defaultflags, align 4, !dbg !74527, !psr.id !74528
  %18 = and i32 %17, -5, !dbg !74527, !psr.id !74529
  store i32 %18, i32* @isc_mem_defaultflags, align 4, !dbg !74527, !psr.id !74530
  %19 = load i32, i32* %4, align 4, !dbg !74531, !psr.id !74532
  %20 = load i8**, i8*** %5, align 8, !dbg !74533, !psr.id !74534
  call void @parse_command_line(i32 %19, i8** %20), !dbg !74535, !psr.id !74536
  call void @klee_dump_memory(), !dbg !74537, !psr.id !74538
  %21 = load i8*, i8** @named_g_chrootdir, align 8, !dbg !74539, !psr.id !74541
  %22 = icmp ne i8* %21, null, !dbg !74542, !psr.id !74543
  br i1 %22, label %23, label %53, !dbg !74544, !psr.id !74545
```

But slash returns a BB in a different function `named_main_earlywarning` and this BB is called from this BB inside the main 

```
64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4, !dbg !74639, !psr.id !74641
  %66 = call i8* @isc_result_totext(i32 %65), !dbg !74642, !psr.id !74643
  call void (i8*, i32, i8*, ...) @isc_error_unexpected(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19.274, i64 0, i64 0), i32 1546, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20.275, i64 0, i64 0), i8* %66), !dbg !74644, !psr.id !74645
  store i32 0, i32* %6, align 4, !dbg !74646, !psr.id !74647
  br label %67, !dbg !74648, !psr.id !74649
```

Now I feel the problem comes from the implementation of this function `succeedsLoopTransitive` because the BB inside the function `named_main_earlywarning` is the first BB and doesn't succeed any loop, but it satisfies the condition because of `transBBs` that checks BBs in the path and captures BB from callsites exist in the path.

A potential solution is to eliminate transitive BBs in the main when we check the path