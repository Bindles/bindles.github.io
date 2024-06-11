#* 3158. Find the XOR of Numbers Which Appear Twice
from functools import reduce
import operator
nums = [1,2,2,1]
#*
def duplicateNumbersXor(nums):
  dupes = set(num for num in nums if nums.count(num) > 1)
  return reduce(lambda x, y: x ^ y, dupes, 0)

print(duplicateNumbersXor(nums))

#*
def duplicateNumbersXor(nums):
    return reduce(lambda x, y: x ^ y, {num for num in nums if nums.count(num) > 1}, 0)

print(duplicateNumbersXor(nums))

#*WORKING. . . 
#* NONE WORK BELOW
#*
def duplicateNumbersXor(nums):
  dupes = set(num for num in nums if nums.count(num) > 1)
  return reduce(operator.xor, dupes)

print(duplicateNumbersXor(nums))

#*
def duplicateNumbersXor(nums):
    return reduce(operator.xor, {num for num in nums if nums.count(num) > 1})

print(duplicateNumbersXor(nums))

#*
def duplicateNumbersXor(nums):
    return sum(num for num in {num for num in nums if nums.count(num) > 1})

print(duplicateNumbersXor(nums))

#*
def duplicateNumbersXor(nums):
    return sum(num for num in set(nums) if nums.count(num) > 1)

print(duplicateNumbersXor(nums))

