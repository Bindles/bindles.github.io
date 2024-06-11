from typing import List

class Solution:
    def maxTotalReward(self, rewardValues: List[int]) -> int:
        n = len(rewardValues)
        rewardValues.sort()
        marked = [False] * n
        total_reward = 0
        
        for i in range(n):
            for j in range(n - 1, -1, -1):
                if not marked[j] and rewardValues[j] > total_reward:
                    marked[j] = True
                    total_reward += rewardValues[j]
                    break
        
        return total_reward

# Test cases
test_cases = [[1, 1, 3, 3], [1, 6, 4, 3, 2]]
sol = Solution()
for i, test_case in enumerate(test_cases):
    print(f"Test case {i+1}: {sol.maxTotalReward(test_case)}")



    


