#* 260. Single Number III
nums = [1,2,1,3,2,5]
from collections import Counter
#*
def singleNumber(nums):
  return [num for num in nums if nums.count(num) == 1]

print(singleNumber(nums))

#*
def singleNumber(nums):
  result=[]
  x = Counter(nums)
  print(x)
  for key, val in x.items():
    if val == 1:
      result.append(key)

  return result


print(singleNumber(nums))

#*
def singleNumber(nums):
  numsTally = Counter(nums)
  return [key for key, val in numsTally.items() if val == 1]

print(singleNumber(nums))



# #*
# def single_number(nums)
#     nums.select{|num| nums.count(num) == 1}
# end
# p single_number(nums)

# #*
# def single_number(nums)
#   nums.tally.filter_map { |key,val| key if val == 1 }
# end
# p single_number(nums)

# #*
# def single_number(nums)
#     nums.tally.select{|_key,val| val == 1 }.keys
# end
# p single_number(nums)

# #*
# def single_number(nums)
#     singles=[]
#     nums.each do |num|
#         singles << num if nums.count(num) == 1
#     end
#     singles
# end
# p single_number(nums)




