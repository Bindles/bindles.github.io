#* 2442. Count Number of Distinct Integers After Reverse Operations
nums = [1,13,10,12,31]
from typing import List
from itertools import chain
from functools import reduce

#*
class Solution:
    def countDistinctIntegers(self, nums: List[int]) -> int:
        rev_arr = [int(str(num)[::-1]) for num in nums]
        nums.extend(rev_arr)
        return len(set(nums))
    
print(Solution().countDistinctIntegers(nums))

#*
class Solution:
    def countDistinctIntegers(self, nums: List[int]) -> int:
        strArr = [str(num) for num in nums]
        revArr = [int(num[::-1]) for num in strArr]

        for num in revArr:
            nums.append(num)
            
        return len(set(nums))

nums = [1,13,10,12,31]
print(Solution().countDistinctIntegers(nums))    
    

def countDistinctIntegers(nums):
  rev_arr = [ str(num) for num in nums]
  x = [ int(num[::-1]) for num in rev_arr]
  

  print(x)

  #append as arrayin array, flatten later
  #nums.append(x)


  for num in x:
    nums.append(num)
    
  print(nums)
  return len(set(nums))

  #FLATTEN ATTEMPTS:

  # print(chain.from_iterable(nums))
  # print(list(chain.from_iterable(nums)))
  #return(sum(nums, []))
  # return list(reduce(lambda x, y: x + y, nums, []))

nums = [1,13,10,12,31]
print(countDistinctIntegers(nums))



