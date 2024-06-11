#* 8. String to Integer (atoi)
s = "42"
# def myAtoi(s):
#   return [max([-217483647, int(s)]), min(2147483647)]

# print(myAtoi(s))

#*
class Solution:
    def myAtoi(self, s: str) -> int:
        s = s.strip()
        if not s:
            return 0

        num = 0
        sign = 1
        i = 0

        if s[i] == '-' or s[i] == '+':
            sign = -1 if s[i] == '-' else 1
            i += 1

        while i < len(s) and s[i].isdigit():
            num = num * 10 + int(s[i])
            i += 1

        num *= sign

        return max(-2147483648, min(num, 2147483647))
        

