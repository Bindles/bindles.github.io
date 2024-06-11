// 2799. Count Complete Subarrays in an Array
nums = [1,3,1,2,2]
/**
 * @param {number[]} nums
 * @return {number}
 */
var countCompleteSubarrays = function(nums) {
  const totalDistinctCount = new Set(nums).size;
  let count = 0;
  let left = 0;
  const currentCounts = new Map();

  for (let right = 0; right < nums.length; right++) {
    currentCounts.set(nums[right], (currentCounts.get(nums[right]) || 0) + 1);

    while (currentCounts.size === totalDistinctCount) {
      count += nums.length - right;
      currentCounts.set(nums[left], currentCounts.get(nums[left]) - 1);
      if (currentCounts.get(nums[left]) === 0) {
        currentCounts.delete(nums[left]);
      }
      left++;
    }
  }

  return count;
};
console.log(countCompleteSubarrays(nums))