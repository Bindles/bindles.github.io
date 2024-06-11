// 260. Single Number III
nums = [1,2,1,3,2,5]

function singleNumber(nums) {
  return nums.filter(num => nums.filter(val => val === num).length === 1);
};
console.log(singleNumber(nums))
