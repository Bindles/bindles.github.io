#* 1004. Max Consecutive Ones III
nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1]; k = 3
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
#* SOL 1
def longest_ones(nums, k)
  zero_count = 0
  left = 0
  max = 0
  
  nums.each_with_index do |num, index|
    zero_count+=1 if num==0

    while zero_count > k
      zero_count -= 1 if nums[left] == 0
      left +=1
    end

    max = [index - left + 1, max].max
  end
  max
end
p longest_ones(nums, k)

#* FASTEST SOL 2
def longest_ones(nums, k)
  left = 0
  nums.each_index do |right|
      k -= 1 - nums[right]
      if k < 0
          k += 1 - nums[left]
          left+=1
      end
  end
  p left
  p nums.size
  nums.size - left
end
p longest_ones(nums, k)


#* WORKING . . .
#*
p nums.size
def longest_ones(nums, k)
    res=[]
    count=0
    nums.each_with_index do |num, i|
      if num == 1
        count+=1
      end
      if num == 0
        res << count if count > 0 
        count=0
        res << num
      end
      p count
    end
    res << count if count > 0
    p res

    
end
p longest_ones(nums, k)



