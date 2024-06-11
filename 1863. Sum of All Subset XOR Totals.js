// 1863. Sum of All Subset XOR Totals
// nums = [1,3]
nums = [5,1,6]
/**
 * @param {number[]} nums
 * @return {number}
 */
var subsetXORSum = function(nums) {
  const n = nums.length;
  let totalSum = 0;

  for (let num = 1; num <= n; num++) {
      const combs = getCombinations(nums, num);
      combs.forEach(comb => {
          totalSum += comb.reduce((acc, val) => acc ^ val, 0);
      });
  }

  return totalSum;
}

function getCombinations(array, size) {
  function* doCombination(offset, combo) {
      if (combo.length === size) {
          yield combo;
          return;
      }
      for (let i = offset; i < array.length; i++) {
          yield* doCombination(i + 1, combo.concat(array[i]));
      }
  }

  return [...doCombination(0, [])];
};
console.log(subsetXORSum(nums))