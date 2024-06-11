#* 2442. Count Number of Distinct Integers After Reverse Operations
nums = [1,13,10,12,31]
# @param {Integer[]} nums
# @return {Integer}
def count_distinct_integers(nums)
  rev_arr = nums.map(&:to_s).map(&:reverse).map(&:to_i)
  nums.push(*rev_arr).uniq.size
end
p count_distinct_integers(nums)

def count_distinct_integers(nums)
  
  nums.push(*nums.map(&:to_s).map(&:reverse).map(&:to_i)).uniq.size
end
p count_distinct_integers(nums)


