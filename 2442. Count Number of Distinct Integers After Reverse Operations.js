// 2442. Count Number of Distinct Integers After Reverse Operations
nums = [1,13,10,12,31]
/**
 * @param {number[]} nums
 * @return {number}
 */
//SOL
function countDistinctIntegers(nums) {
  let revArr = nums.map(num => parseInt(num.toString().split('').reverse().join('')));
  nums.push(...revArr);
  let uniqueNums = new Set(nums);
  return uniqueNums.size;
}
console.log(countDistinctIntegers(nums));  
