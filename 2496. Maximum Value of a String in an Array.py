#* 2496. Maximum Value of a String in an Array
strs = ["alic3","bob","3","4","00000"]
from typing import List
#*
def maximumValue(strs):
  res=[]
  for str in strs:
    if str.isdigit():
      res.append(int(str))
    else:
      res.append(len(str))

  return max(res)

print(maximumValue(strs))

#*
class Solution:
    def maximumValue(self, strs: List[str]) -> int:
        return max(int(str) if str.isdigit() else len(str) for str in strs)
    

print(Solution().maximumValue(strs))

#* to show use of any/all / practice
class Solution:
    def maximumValue(self, strs: List[str]) -> int:
        return max(len(s) if any(c.isalpha() for c in s) else int(s) for s in strs)
    

print(Solution().maximumValue(strs))

class Solution:
    def maximumValue(self, strs: List[str]) -> int:
        return max(int(s) if all(c.isdigit() for c in s) else len(s) for s in strs)
    

print(Solution().maximumValue(strs))






# def maximum_value(strs)
#   res=[]
#   strs.each do |str|
#     if str.match?(/^\d+$/)
#       p str 
#       p res << str.to_i
#     else
#       p res << str.size
#     end
#   end
#   res.max
# end
# p maximum_value(strs)

# def maximum_value(strs)
#   strs.map{|str| str.match?(/^\d+$/) ? str.to_i : str.size }.max
# end
# p maximum_value(strs)

# def maximum_value(strs)
#   strs.map{|str| str.match?(/[a-z]/) ? str.size : str.to_i }.max
# end
# p maximum_value(strs)




