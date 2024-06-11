// 3181. Maximum Total Reward Using Operations II
rewardValues = [1,1,3,3]
//DOESNT WORK
/**
 * @param {number[]} rewardValues
 * @return {number}
 */
var maxTotalReward = function(rewardValues) {
  rewardValues = Array.from(new Set(rewardValues)).sort((a, b) => a - b);
  let x = 1;
  for (let num of rewardValues) {
    let validX = x & ((1 << num) - 1);
    x |= validX << num;
  }
  return x.toString(2).length - 1;
};
console.log(maxTotalReward([15,20]));