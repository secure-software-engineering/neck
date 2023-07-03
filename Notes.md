
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

```
tools/neck/neck --function-local-points-to-info-wo-globals  -m /work
spaces/neck/new_apps/squid/src/squid.ll --taint-config ../config/cmd-tool-config.json --annotate --verbose > squid_taint.log 2>&1 
```


```
tools/neck/neck --function-local-points-to-info-wo-globals --use-simplified-dfa -m /workspaces/neck/new_apps/toy_examples/toy_config_outside_main_deep.ll --taint-config ../config/cmd-tool-config.json --annotate --verbose 2>&1 | tee before_merge_func_deep.log
```

2. It's not necessary for the neck BB outside the main to dominate subsequent BBs. There is a possibility that this BB is the last. For example, in the toy example, when there is no statement after the loop 
```
for (int i = 1; i < argc; i++) {
    strcat(concatenated, argv[i]);
  }
```


3. Update `closestNeckCandidateReachableFromEntry` for `UseLateIntraProceduralMainReduction` because the distance currently is computed based on the assumption that the `neck` is inside the `main`