#* 2562. Find the Array Concatenation Value
nums = [7,52,2,4]
# @param {Integer[]} nums
# @return {Integer}
#*
def find_the_array_conc_val(nums)
    count=0
    until nums.empty?
        count += [nums.delete_at(0), nums.delete_at(-1)].join.to_i
    end
    count
end
nums = [7,52,2,4]
p find_the_array_conc_val(nums)

#*
def find_the_array_conc_val(nums)
    res = []
    until nums.empty?
        p res << [nums.delete_at(0), nums.delete_at(-1)].join.to_i
    end
    res.sum
end
nums = [7,52,2,4]
p find_the_array_conc_val(nums)

#*
def find_the_array_conc_val(nums)
    res = []
    until nums.empty?
        res << [nums.delete_at(0).to_s + nums.delete_at(-1).to_s].map(&:to_i)
    end
    res.flatten.sum
end
nums = [7,52,2,4]
p find_the_array_conc_val(nums)