#* 1248. Count Number of Nice Subarrays
nums = [1,1,2,1,1]; k = 3
from typing import List
from collections import defaultdict
#*
class Solution:
    def numberOfSubarrays(self, nums: List[int], k: int) -> int:
        odd = []
        for i, num in enumerate(nums):
            if num%2 == 1:
                odd.append(i)

        res = 0
        l = r = cnt = 0
        n = len(odd)
        while r < n:
            num = odd[r]
            cnt += 1
            r += 1

            if l < r and cnt == k:
                left = odd[l]-(odd[l-1] if l-1 >= 0 else -1)
                right = (odd[r]-num) if r < n else (len(nums)-num)
                res += left*right
                
                cnt -= 1
                l += 1
        return res
    
print(Solution().numberOfSubarrays(nums))

#*
def numberOfSubarrays(self, nums: List[int], k: int) -> int:
	odd = 0
	dic = defaultdict(int)
	dic[0] = 1
	l = len(nums)
	count = 0

	for i in range(0, l):
		odd+=(nums[i]%2)
		count+=dic[odd-k]
		dic[odd]+=1
	return count

print(Solution().numberOfSubarrays(nums))