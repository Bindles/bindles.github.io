#* 1608. Special Array With X Elements Greater Than or Equal X
nums = [3,5]
# @param {Integer[]} nums
# @return {Integer}
def special_array(nums)
  i = nums.size
  while i > 0
    return i if i == nums.count{|num| num >= i }
    i-=1
  end
  -1
end
p special_array(nums)







