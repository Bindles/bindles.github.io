# PYTHON
#* 1863. Sum of All Subset XOR Totals
#nums = [1,3]
nums = [5,1,6]
from typing import List
from itertools import combinations
from functools import reduce
from operator import ixor
#*
class Solution:
    def subsetXORSum(self, nums: List[int]) -> int:
        result=0
        for num in range(1, len(nums) +1):
            combs = combinations(nums, num)
            for comb in combs:
                result += reduce(ixor, comb)

        return result 
    
print(Solution().subsetXORSum(nums))
        