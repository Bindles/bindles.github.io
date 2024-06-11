# PYTHON
#* 3065. Minimum Operations to Exceed Threshold Value I
nums = [2,11,10,1,3]; k = 10
from typing import List
class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        count=0
        while not all(allnum >= k for allnum in nums):
            count+=1
            nums.remove(min(nums))
        return count
    
print(Solution().minOperations(nums,k))

