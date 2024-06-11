# PYTHON
#* 1004. Max Consecutive Ones III
nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1]; k = 3
from typing import List
#* SOL 1
class Solution:
  def longestOnes(self, nums: List[int], k: int) -> int:
    zero_count = 0
    left = 0
    max_length = 0

    for index, num in enumerate(nums):
      if num == 0:
        zero_count += 1
      
      while zero_count > k:
        if nums[left] == 0:
          zero_count -= 1
        left += 1
      
      max_length = max(index - left + 1, max_length)
  
    return max_length
  
print(Solution().longestOnes(nums, k))

#* SOL 2 | FAST
class Solution:
    def longestOnes(self, nums: List[int], k: int) -> int:
        left=0
        for right in range(len(nums)):
            k-=1 - nums[right]
            if k < 0:
                k+=1 - nums[left]
                left+=1

        return len(nums) - left
    
print(Solution().longestOnes(nums, k))

function longestOnes () {
   left=0;
   for (right in nums) {
      console.log(right)
   }
}
