#* 1255. Maximum Score Words Formed by Letters
words = ["dog","cat","dad","good"]; letters = ["a","a","c","d","d","d","g","o","o"]; score = [1,0,9,5,0,0,3,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0]
from typing import List
from collections import Counter
#*
class Solution:
    def maxScoreWords(self, words: List[str], letters: List[str], score: List[int]) -> int:
        return (f:=lambda i,letters:words[i:] and max(f(i+1,letters),(q:=Counter(words[i]))<=letters and sum(score[ord(c)-97]*q[c] for c in q)+f(i+1,letters-q)) or 0)(0,Counter(letters))
    
print(Solution().maxScoreWords(words,letters,score))
        