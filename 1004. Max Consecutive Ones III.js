// JS
// 1004. Max Consecutive Ones III
nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1]; k = 3
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */

//SOL 1
var longestOnes = function(nums, k) {
  let zeroCount = 0;
  let left = 0;
  let maxLength = 0;

  for (let right = 0; right < nums.length; right++) {
      if (nums[right] === 0) {
          zeroCount++;
      }

      while (zeroCount > k) {
          if (nums[left] === 0) {
              zeroCount--;
          }
          left++;
      }

      maxLength = Math.max(maxLength, right - left + 1);
  }

  return maxLength;
};
console.log(longestOnes(nums, k))

function longestOnes () {
   left=0;
   for (right in nums) {
      //console.log(right)
      k-=1 - nums[right]
      if (k < 0) {
          k+=1 - nums[left]
          left+=1
      }
   }
   return nums.length - left
}
console.log(longestOnes(nums, k))
