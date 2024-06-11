# PYTHON
#* 992. Subarrays with K Different Integers
nums = [1,2,1,2,3]; k = 2
from typing import List
from collections import OrderedDict

class Solution:
    def subarraysWithKDistinct(self, nums: List[int], k: int) -> int:
        result = 0
        l = 0
        od = OrderedDict()
        
        for i, n in enumerate(nums):
            od[n] = i
            od.move_to_end(n)
            while len(od) > k:
                l = od.popitem(last=False)[1] + 1
            if len(od) == k:
                result += next(iter(od.items()))[1] - l + 1

        return result
    
print(Solution().subarraysWithKDistinct(nums, k))
