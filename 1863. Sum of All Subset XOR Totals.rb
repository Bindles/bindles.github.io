#* 1863. Sum of All Subset XOR Totals
#nums = [1,3]
nums = [5,1,6]
# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
    (1..nums.size).map do |num|
      nums.combination(num).to_a.sum { |x|x.reduce(:^) }
    end.sum
end
p subset_xor_sum(nums)