#* 3158. Find the XOR of Numbers Which Appear Twice
nums = [1,2,2,1]
# @param {Integer[]} nums
# @return {Integer}
def duplicate_numbers_xor(nums)
  nums.select {|num| nums.count(num) > 1 }.uniq.reduce(:^) || 0
end
p duplicate_numbers_xor(nums)

def duplicate_numbers_xor(nums)
  nums.tally.select {|key, val| val > 1}.keys.reduce(:^) || 0
end
p duplicate_numbers_xor(nums)

def duplicate_numbers_xor(nums)
  nums.tally.reduce(0) { |acc, (key, val_count)| val_count > 1 ? acc ^ key : acc }  
end
p duplicate_numbers_xor(nums)

# @param {Integer[]} nums
# @return {Integer}
def duplicate_numbers_xor(nums)
  nums.sort!
  res = 0
  (1...nums.size).each do |i|
    res ^= nums[i] if nums[i] == nums[i - 1]
  end
  res
end

#* some weird code i want to look at
# def duplicate_numbers_xor(nums)
#   nums.groupBy(identity).filter(j -> j._2.size > 1).keys.reduce(:^)
# end
# p duplicate_numbers_xor(nums)