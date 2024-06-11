// 3180. Maximum Total Reward Using Operations I

function maxTotalReward(rewardValues) {
  rewardValues.sort((a, b) => a - b);
  let maximum = rewardValues[rewardValues.length - 1];

  //let dp = new Array(maximum * 2).fill(0); //below might be faster/efficient
  let dp = new Int16Array(maximum * 2)

  for (let rew of rewardValues) {
    for (let i = 0; i < rew; i++) {
      if (dp[i + rew] < dp[i] + rew) {
        dp[i + rew] = dp[i] + rew;
      }
    }
  }

  return Math.max(...dp);
};
console.log(maxTotalReward([3, 7, 2, 9, 4]));


//Int8 0-256
//Int8Array failed lol
