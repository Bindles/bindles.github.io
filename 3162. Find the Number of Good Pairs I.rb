#* 3162. Find the Number of Good Pairs I
nums1 = [1,3,4]; nums2 = [1,3,4]; k = 1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
#*
def number_of_pairs(nums1, nums2, k)
    nums1.product(nums2).count {|a, b| a % (b * k) == 0 }  
end
p number_of_pairs(nums1, nums2, k)

#*
def number_of_pairs(nums1, nums2, k)
    nums1.sum do |i|
        nums2.count do |j|
            i % (j * k) == 0
        end
    end
end
p number_of_pairs(nums1, nums2, k)

#*
def number_of_pairs(nums1, nums2, k)
    count=0
        nums1.each do |i|
            nums2.each do |j|
                count+=1 if i % (j * k) == 0
            end
        end
    count
end
p number_of_pairs(nums1, nums2, k)

#*
def number_of_pairs(nums1, nums2, k)
    nums1.product(nums2).count {|pair| pair.first % (pair.last * k) == 0 }  
end
p number_of_pairs(nums1, nums2, k)


#*MISC
def pairwise_operation(nums1, nums2, &operation)
  nums1.zip(nums2).map(&operation)
end

nums1 = [1, 2, 3]
nums2 = [4, 5, 6]

# Example usage for addition
sums = pairwise_operation(nums1, nums2) { |a, b| a + b }
p sums # [5, 7, 9]

# Example usage for subtraction
differences = pairwise_operation(nums1, nums2) { |a, b| a - b }
p differences # [-3, -3, -3]

# Example usage for multiplication
products = pairwise_operation(nums1, nums2) { |a, b| a * b }
p products # [4, 10, 18]

# Example usage for division
quotients = pairwise_operation(nums1, nums2) { |a, b| a / b.to_f }
p quotients # [0.25, 0.4, 0.5]

# do addition (sum) with trnaspose
nums1 = [1, 2, 3]
nums2 = [4, 5, 6]

p [nums1, nums2].transpose.map(&:sum)

