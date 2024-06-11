#* 2799. Count Complete Subarrays in an Array
nums = [1,3,1,2,2]
from typing import List
from collections import Counter
#*
class Solution:
    def countCompleteSubarrays(self, nums: List[int]) -> int:
        target = len(set(nums))
        n = len(nums)
        result = 0
        for i in range(len(nums)):
            unique = set()
            for j in range(i, len(nums)):
                unique.add(nums[j])
                if len(unique) == target:
                    result += n - j
                    break
        return result
    
print(Solution().countCompleteSubarrays(nums))

#* Similar to my ruby hash solution
class Solution:
    def countCompleteSubarrays(self, nums: List[int]) -> int:

        n = len(nums) # length of the input array
        distinct = len(set(nums)) # number of distinct elements in the input array
        count = 0 # initialize count of complete subarrays
        left, right = 0, 0 # initialize left and right pointers for sliding window
        counter = Counter() # initialize counter to keep track of distinct elements in current subarray

        while right < n: # iterate through the array with the right pointer
            counter[nums[right]] += 1 # increment the count of nums[right] in counter

            while len(counter) == distinct: # check if the length of counter is equal to distinct
                counter[nums[left]] -= 1 
                if counter[nums[left]] == 0:
                    del counter[nums[left]]
                left += 1 # increment left pointer
                count += n - right # add n-right to count
            right += 1 # increment right pointer

        return count # return count of complete subarrays
    
print(Solution().countCompleteSubarrays(nums))

