#* 2032. Two Out of Three
#nums1 = [1,1,3,2]; nums2 = [2,3]; nums3 = [3]
nums1 = [3,1]; nums2 = [2,3]; nums3 = [1,2]
from typing import List
#&
class Solution:
  def twoOutOfThree(self, nums1: List[int], nums2: List[int], nums3: List[int]) -> List[int]:
      s1 = set(nums1).intersection(set(nums2))
      s2 = set(nums2).intersection(set(nums3))
      s3 = set(nums1).intersection(set(nums3))
      return s1.union(s2).union(s3)
  
print(Solution().twoOutOfThree(nums1,nums2,nums3))

#*
class Solution:
  def twoOutOfThree(self, nums1: List[int], nums2: List[int], nums3: List[int]) -> List[int]:
      return set(nums1).intersection(set(nums2)).union(set(nums2).intersection(set(nums3))).union(set(nums1).intersection(set(nums3)))

print(Solution().twoOutOfThree(nums1,nums2,nums3))

       