#* 140. Word Break II
s = "catsanddog"; wordDict = ["cat","cats","and","sand","dog"]
from typing import List
class Solution:
    def wordBreak(self, s: str, wordDict: List[str]) -> bool:
        def f(i):
            result = [s[i:]] if s[i:] in wordDict else []
            for j in range(i+1, len(s)):
                if s[i:j] in wordDict:
                    for t in f(j):
                        result.append(s[i:j]+' '+t)

            return result

        return f(0)
    
print(Solution().wordBreak(s, wordDict))