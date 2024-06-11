#* 930. Binary Subarrays With Sum
nums = [1,0,1,0,1]; goal = 2
# @param {Integer[]} nums
# @param {Integer} goal
# @return {Integer}
#*
def num_subarrays_with_sum(nums, goal)
    res = total = 0
    sum_hash = Hash.new(0)

    nums.each do |num|
        total += num
        
        if total == goal
            res += 1
        end
        
        res += sum_hash[(total - goal)] 
        sum_hash[total] += 1
    end

    res
end
p num_subarrays_with_sum(nums, goal)

#*
def num_subarrays_with_sum(nums, goal)
    total_count = 0
    sum = 0
    prefix_sum = Array.new(nums.size + 1, 0)
    prefix_sum[0] = 1
    nums.each do |num|
        sum += num
        if sum >= goal
            total_count += prefix_sum[sum - goal]
        end
        prefix_sum[sum] += 1
    end
    return total_count
end
p num_subarrays_with_sum(nums, goal)

#*
def num_subarrays_with_sum(nums, goal)
    nums.each do |num|
        p num
    end
end
p num_subarrays_with_sum(nums, goal)




#* COMMENTS
#*
def num_subarrays_with_sum(nums, goal)
    res = 0
    sum_hash = Hash.new(0)
    total = 0
    nums.each do |num|
        total += num
        # If our total thus far matches goal, increment answer.
        # Example:  nums = [1,0,1,0,1], goal = 2
        # At index 2 our total meets our goal adding 1 to answer.
        # We also incrememnt index at 3 as well because total still equals the goal.
        if total == goal
            res += 1
        end
        
        # If total - goal exists in our sum hash then we know.
        # there exist a subarray(s) which meet our goal.
        # Example:  nums = [1,0,1,0,1], goal = 2
        # At the final index total == 3 but at index 0 and 1 we had a total of
        # 1 so we add 2 to answer giving us a total 4.
        res += sum_hash[(total - goal)] 
        
        sum_hash[total] += 1
    end
    
    res
end