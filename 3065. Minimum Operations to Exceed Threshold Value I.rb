#* 3065. Minimum Operations to Exceed Threshold Value I
nums = [2,11,10,1,3]; k = 10
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
  count=0
  until nums.all? {|all| all >= k}
    count+=1
    nums.delete_at(nums.index(nums.min))
  end
  count
end
p min_operations(nums, k)

