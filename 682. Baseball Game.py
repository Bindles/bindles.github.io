#* 682. Baseball Game
operations = ["5","2","C","D","+"]
from typing import List
#*
class Solution:
    def calPoints(self, operations: List[str]) -> int:
        res=[]
        for c in operations:
            if c == 'C':
                res.pop(-1)
            elif c == 'D':
                res.append(res[-1] * 2)
            elif c == '+':
                res.append(res[-1] + res[-2])
            else:
                res.append(int(c))

        return sum(res)
        
      
  
operations = ["5","2","C","D","+"]
print(Solution().calPoints(operations)) 

def calPoints(operations):
  res=[]
  for c in operations:
    if c == 'C':
      res.pop(-1)
    elif c == 'D':
      print(res[-1])
      res.append(res[-1] * 2)
    elif c == '+':
      print(res[-1])
      res.append(res[-1] + res[-2])
    else:
      res.append(int(c))
    print(res)

  return sum(res)
      
  
operations = ["5","2","C","D","+"]
print(calPoints(operations)) 

res= [1,2,3]
print(res[-1])
print(res.pop(-1))

#*
# def cal_points(operations)
#     res=[]
#     operations.each do |char|
#         case
#         when char == "C"
#             res.pop
#         when char == "D"
#             res << (res[-1] * 2)
            
#         when char == "+"
#             res << res[-1] + res[-2]
            
#         else
#             res << char.to_i
#         end
#     end
#     res.sum
# end
# cal_points(operations)

# def cal_points(operations)
#     #p operations.pop
#     res=[]
#     operations.each do |char|
#         p char
#         if char == "C"
#             res.pop
#         elsif char == "D"
#             p res << (res[-1] * 2)
            
#         elsif char == "+"
#             p res << res[-1] + res[-2]
            
#         else
#             p res << char.to_i
#         end
#         p res
#     end
#     res.sum
# end
# cal_points(operations)

