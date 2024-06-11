#* 74. Search a 2D Matrix
matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]; target = 3
from typing import List
#*
class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        return target in sum(matrix,[])
    
print(Solution().searchMatrix(matrix, target))

#*
class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        return any(target in sublist for sublist in matrix) 
    
print(Solution().searchMatrix(matrix, target))

#*
class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        return True if target in [i for j in matrix for i in j] else False

print(Solution().searchMatrix(matrix, target))

