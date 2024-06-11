#* 2032. Two Out of Three
#nums1 = [1,1,3,2]; nums2 = [2,3]; nums3 = [3]
nums1 = [3,1]; nums2 = [2,3]; nums3 = [1,2]
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
  a = nums1 & nums2
  b = nums2 & nums3
  c = nums1 & nums3
  return a | b | c
end
p two_out_of_three(nums1, nums2, nums3)

def two_out_of_three(nums1, nums2, nums3)
  nums1 & nums2 | nums1 & nums3 | nums2 & nums3
end
p two_out_of_three(nums1, nums2, nums3)

def two_out_of_three(nums1, nums2, nums3)
  (nums1 & nums2) | (nums1 & nums3) | (nums2 & nums3)
end
p two_out_of_three(nums1, nums2, nums3)




# class Solution:
#   def twoOutOfThree(self, nums1: List[int], nums2: List[int], nums3: List[int]) -> List[int]:
#       s1 = set(nums1).intersection(set(nums2))
#       s2 = set(nums2).intersection(set(nums3))
#       s3 = set(nums1).intersection(set(nums3))
#       return s1.union(s2).union(s3)

        return 