# PYTHON
#* 576. Out of Boundary Paths
m = 2; n = 2; maxMove = 2; startRow = 0; startColumn = 0
from typing import List
from functools import cache
#*
class Solution:
    @cache
    def findPaths(self, m: int, n: int, maxMove: int, x: int, y: int) -> int:
        return 1 if (x==m or y==n or x<0 or y<0) else 0 if maxMove==0 else sum(self.findPaths(m,n,maxMove-1,x+dx,y+dy) for dx,dy in [(1,0),(-1,0),(0,1),(0,-1)]) % (10**9 + 7)
    
print(Solution().findPaths(m,n,maxMove,startRow,startColumn))

#*
class Solution:
    def findPaths(self, m: int, n: int, maxMove: int, startRow: int, startColumn: int) -> int:
        #@cache
        def dfs(i: int, j: int, moves: int) -> int:
            if moves < 0: return 0
            if i < 0 or j < 0 or i >= m or j >= n: return 1
            return sum(dfs(r, c, moves - 1) for r, c in [(i-1, j), (i+1,j), (i,j-1), (i,j+1)])
        return dfs(startRow, startColumn, maxMove) % (10**9 + 7)  
    
print(Solution().findPaths(m,n,maxMove,startRow,startColumn))