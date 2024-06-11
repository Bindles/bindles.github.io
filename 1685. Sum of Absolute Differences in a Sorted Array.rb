#* 1685. Sum of Absolute Differences in a Sorted Array
nums = [2,3,5]
# @param {Integer[]} nums
# @return {Integer[]}
#*
def get_sum_absolute_differences(nums)
  n = nums.size
  left = 0
  right = (1...n).map{|i| nums[i] - nums[0]}.sum
  result = [right]
  
  (1...n).each do |i|
    diff = nums[i] - nums[i-1]
    right -= diff*(n - i)
    left += diff*i
    result << left + right
  end
  
  result
end
p get_sum_absolute_differences(nums)

#*WORKING . . .
#*
def get_sum_absolute_differences(nums)
  nums.each_index do |i|
    (i-1...nums.size).each do |j|
      p "#{nums[i]} #{nums[j]}"
    end
  end
    
end
p get_sum_absolute_differences(nums)

#*
def get_sum_absolute_differences(nums)
  x = nums
  p x.map{|xx| (2-xx).abs }.sum
  p x.map{|xx| (3-xx).abs }.sum
  p x.map{|xx| (5-xx).abs }.sum
    
end
p get_sum_absolute_differences(nums)

p '-'

res=[]
z = nums
p a = nums
a.each do |num|
  p num
  res << z.map{|ea| (num-ea).abs }.sum
end
p res



def get_sum_absolute_differences(nums)
  res=[]
  numcp = nums
  nums.each do |num|
      res << numcp.map{|ea| (num-ea).abs }.sum
  end
  res   
end



# @param {Integer[]} nums
# @return {Integer[]}
def get_sum_absolute_differences(nums)
  numcp = nums
  nums.map do |num|
      numcp.map{|ea| (num-ea).abs }.sum
  end
end



