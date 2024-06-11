#* 1208. Get Equal Substrings Within Budget
s = "abcd"; t = "bcdf"; maxCost = 3
#*
class Solution:
    def equalSubstring(self, s: str, t: str, maxCost: int) -> int:
        left = tcost = maxlen = 0

        for right in range(len(s)):
            tcost+= abs( ord(s[right]) - ord(t[right]) )

            while tcost > maxCost:
                tcost -= abs( ord(s[left]) - ord(t[left]) )
                left+=1

                maxlen = max(maxlen, right - left +1)
        return maxlen
    
print(Solution().equalSubstring(s,t,maxCost))

#* PRACTICE WRITING IT
class Solution:
    def equalSubstring(self, s: str, t: str, maxCost: int) -> int:
        left = tcost = maxlen = 0

        for right in range(len(s)):
            tcost += abs( ord(s[right]) - ord(t[right]) )

            while tcost > maxCost:
                tcost -= abs(ord(s[left]) - ord(s[right]))
                left+=1

                maxlen = max(maxlen, right - left +1)
        return maxlen
    
print(Solution().equalSubstring(s,t,maxCost))