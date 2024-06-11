// 930. Binary Subarrays With Sum
nums = [1,0,1,0,1]; goal = 2
/**
 * @param {number[]} nums
 * @param {number} goal
 * @return {number}
 */
var numSubarraysWithSum = function(nums, goal) {
    let res = 0, total = 0;
    const sumHash = {};

    nums.forEach(num => {
        total += num;
        
        if (total === goal) {
            res += 1;
        }
        
        if ((total - goal) in sumHash) {
            res += sumHash[total - goal];
        }
        
        if (total in sumHash) {
            sumHash[total] += 1;
        } else {
            sumHash[total] = 1;
        }
    });

    return res;
};
console.log(numSubarraysWithSum(nums, goal));  // Output: 4
