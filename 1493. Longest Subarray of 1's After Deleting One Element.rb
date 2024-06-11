#* 1493. Longest Subarray of 1's After Deleting One Element
nums = [0,1,1,1,0,1,1,0,1]
# @param {Integer[]} nums
# @return {Integer}
#*
def longest_subarray(nums)
  left = 0
  max_length = 0
  k = 1
  
  nums.each_index do |right|
    k -= 1 if nums[right] == 0
    
    while k < 0
      k += 1 if nums[left] == 0
      left += 1
    end

    max_length = [max_length, right - left].max 
    # max_length = right - left if right - left > max_length
  end
  max_length
end
p longest_subarray(nums)

#* CHECK INTERESTING SOLS
#*
def longest_subarray(nums)
    ls = nums.chunk(&:itself).collect {|v| [v.first, v.last.size] }
    (hl = ls.collect(&:first).tally).default = 0
    n0, n1 = hl.values_at(0, 1)
    return 0 if n1.zero?
    return ls.filter {|(v, cnt)| v == 1 }.first.last - (n0.zero? ? 1 : 0) if n1 == 1
    ls.filter! {|v| 
        v.first == 1 || (v.first.zero? && v.last > 1) 
    }.collect {|(v, cnt)| 
        v.zero? ? 0 : cnt 
    }.each_cons(2).collect(&:sum).max
end

# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
    left_w, right_w, longest_arr, k = 0, 0, 0, 1
    
    while right_w < nums.length
        longest_arr = [longest_arr, right_w - left_w].max
        
        right_w += 1 if nums[right_w] == 1
        if nums[right_w] == 0 && k > 0
            right_w += 1
            k -= 1
        end
        
        if nums[right_w] == 0 && k == 0
            k += 1 if nums[left_w] == 0
            left_w += 1
        end
    end
    return longest_arr
end

# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  left = 0
  right = 0
  k = 1
  max = 0
  
  n = nums.size
  while right < n
    if nums[right] == 0
      k -= 1
      while k < 0
        k += 1 if nums[left] == 0
        left += 1
      end
    end
    max = [max, right - left].max
    
    right += 1
  end

  max
end

# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
    left_w, right_w, longest_arr, k = 0, 0, 0, 1
    
    while right_w < nums.length
        longest_arr = [longest_arr, right_w - left_w].max
        
        right_w += 1 if nums[right_w] == 1
        if nums[right_w] == 0 && k > 0
            right_w += 1
            k -= 1
        end
        
        if nums[right_w] == 0 && k == 0
            k += 1 if nums[left_w] == 0
            left_w += 1
        end
    end
    return longest_arr
end

#* GOOD GOOD
# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
    left = 0
    right = 0
    zeros = 0

    while right < nums.size
        zeros += 1 if nums[right].zero?

        if zeros > 1
            zeros -= 1 if nums[left].zero?

            left += 1
        end

        right += 1
    end

    (right - left) - 1
end