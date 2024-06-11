# PYTHON
#* 1503. Last Moment Before All Ants Fall Out of a Plank
n = 4; left = [4,3]; right = [0,1]
from typing import List
#*
class Solution:
    def getLastMoment(self, n: int, left: List[int], right: List[int]) -> int:
        return max(max(left, default=0), n - min(right, default=n))
    
print(Solution().getLastMoment(n, left, right))

#*
class Solution:
    def getLastMoment(self, n: int, left: List[int], right: List[int]) -> int:
        leftInd = max(left, default=0)
        rightInd = min(right, default=n)
        return max(leftInd, n - rightInd)

print(Solution().getLastMoment(n, left, right))
