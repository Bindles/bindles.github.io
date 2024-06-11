# PYTHON
#* 961. N-Repeated Element in Size 2N Array
nums = [1,2,3,3]
from typing import List
from statistics import mode
from collections import Counter

#*
class Solution:
    def repeatedNTimes(self, nums: List[int]) -> int:
        return mode(nums)
    
print(Solution().repeatedNTimes(nums))

#*
class Solution:
    def repeatedNTimes(self, nums: List[int]) -> int:
        return Counter(nums).most_common(1)[0][0]
    
print(Solution().repeatedNTimes(nums))

#*
class Solution:
    def repeatedNTimes(self, nums: List[int]) -> int:
        return (sum(nums) - sum(set(nums))) // (len(nums) // 2 - 1)

print(Solution().repeatedNTimes(nums))