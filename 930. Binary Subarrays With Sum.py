#* 930. Binary Subarrays With Sum
nums = [1,0,1,0,1]; goal = 2
# @param {Integer[]} nums
# @param {Integer} goal
# @return {Integer}
#*
# def num_subarrays_with_sum(nums, goal)
#     res = total = 0
#     sum_hash = Hash.new(0)

#     nums.each do |num|
#         total += num
        
#         if total == goal
#             res += 1
#         end
        
#         res += sum_hash[(total - goal)] 
#         sum_hash[total] += 1
#     end

#     res
# end
# p num_subarrays_with_sum(nums, goal)
#*
def num_subarrays_with_sum(nums, goal):
    res = total = 0
    sum_hash = {}
    
    for num in nums:
        total += num
        
        if total == goal:
            res += 1
        
        if (total - goal) in sum_hash:
            res += sum_hash[total - goal]
        
        if total in sum_hash:
            sum_hash[total] += 1
        else:
            sum_hash[total] = 1

    return res

# Example usage
nums = [1, 0, 1, 0, 1]
goal = 2
print(num_subarrays_with_sum(nums, goal))  # Output: 4


def num_subarrays_with_sum(nums, goal):
    res = total = 0
    sum_hash = {}

    for num in nums:
        total += num
        
        if total == goal:
            res += 1
                
        res += sum_hash[(total - goal)] 
        sum_hash[total] += 1
    

    res


