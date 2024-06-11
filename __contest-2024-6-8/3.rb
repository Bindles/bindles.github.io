def max_total_reward(reward_values)
  reward_values.sort!
  maximum = reward_values[-1]
  dp = Array.new(maximum * 2, 0)

  reward_values.each do |rew|
    (0...rew).each do |i|
      if dp[i + rew] < dp[i] + rew
        dp[i + rew] = dp[i] + rew
      end
    end
  end

  dp.max
end

p max_total_reward([3, 7, 2, 9, 4])

# For every reward value less than `rew` , update DP
