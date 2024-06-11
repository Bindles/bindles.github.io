#* 2799. Count Complete Subarrays in an Array
nums = [1,3,1,2,2]
# @param {Integer[]} nums
# @return {Integer}
def count_complete_subarrays(nums)
  total_distinct_count = nums.uniq.size
  count = 0
  left = 0
  current_counts = Hash.new(0)

  nums.each_with_index do |num, right|
    current_counts[num] += 1
    
    while current_counts.keys.size == total_distinct_count
      count += nums.size - right
      current_counts[nums[left]] -= 1
      current_counts.delete(nums[left]) if current_counts[nums[left]] == 0
      left += 1
    end
  end

  count
end
p count_complete_subarrays(nums)