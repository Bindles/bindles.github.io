#* 3162. Find the Number of Good Pairs I
nums1 = [1,3,4]; nums2 = [1,3,4]; k = 1
# #*
def numberOfPairs(nums1, nums2, k):
    return sum(i % (j * k) == 0 for i in nums1 for j in nums2)

print(numberOfPairs(nums1, nums2, k))

#*
def number_of_pairs(nums1, nums2, k):
    return sum(
        sum(1 for j in nums2 if i % (j * k) == 0)
        for i in nums1
    )

print(numberOfPairs(nums1, nums2, k))

#*
def number_of_pairs(nums1, nums2, k):
    count = 0
    for i in nums1:
        for j in nums2:
            if i % (j * k) == 0:
                count += 1
    return count


print(number_of_pairs(nums1, nums2, k))

#*
def number_of_pairs(nums1, nums2, k):
    count=0
    for i in nums1:
        for j in nums2:
            count+=1 if i % (j * k) == 0 else 0
    return count

print(number_of_pairs(nums1, nums2, k))

#*

print(numberOfPairs(nums1, nums2, k))

