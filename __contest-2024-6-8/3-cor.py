rewardValues= [3, 7, 2, 9, 4]
from typing import List

class Solution:
    def maxTotalReward(self, rewardValues: List[int]) -> int:
        rewardValues.sort()
        maximum = rewardValues[-1] 
 
        dp = [0] * (maximum * 2)

        for rew in rewardValues:
            for i in range(rew): 
                if dp[i + rew] < dp[i] + rew:
                    dp[i + rew] = dp[i] + rew
        return max(dp)
print(Solution().maxTotalReward(rewardValues))
