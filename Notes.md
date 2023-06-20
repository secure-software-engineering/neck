
- I changed the implementation to include `ToInsert.insert(CallSiteBB->getNextNode())` instead of the `ToInsert.insert(CallSiteBB)` where the CallSite is located. This change handles situations where the neck is located as 1st stmt in the 1st BB in the main (i.e., the case of ag.ll). However, the downside is that the next BB can be inside if-condition (i.e., the case of ag.ll), which violates the propoerty that the neck should be executed only once. To overcome this situation, we can do the following:
    - make this replacement only when the neck is in the entry BB. 
    - Check the `CallSiteBB->getNextNode()` isn't inside a condition. Or more broadly doesn't violate the neck properties.

