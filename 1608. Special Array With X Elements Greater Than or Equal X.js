// JAVASCRIPT
// 1608. Special Array With X Elements Greater Than or Equal X
nums = [3,5]
//SOL
function specialArray(nums) {
  let i = nums.length;
  while (i > 0) {
      if (i === nums.filter(num => num >= i).length) {
          return i;
      }
      i -= 1;
  }
  return -1;
};
console.log(specialArray(nums))


// WORkING
// NO GOOD
function specialArray(nums) {
  let i = nums.length
  while (i>0) {
    if (nums.filter(num => num >= 1).length ) {
      return i
      i-=1
    }
    return -1
  }
};
console.log(specialArray(nums))


console.log(specialArray(nums))
// def specialArray(nums):
//   i = len(nums)
//   while i > 0:
//     if i == sum(1 for num in nums if num >= i):
//       return i
//     i-=1
//     return -1
  
// print(specialArray(nums))




// MISC

// Ruby:
// nums = [1, 2, 3, 4, 5]
// i = 3
// count = nums.count { |num| num >= i }  //This will be 3 (elements: 3, 4, 5)
// # puts count

// # Python:
// nums = [1, 2, 3, 4, 5]
// i = 3
// count = sum(1 for num in nums if num >= i)  // This will be 3 (elements: 3, 4, 5)
// print(count)
