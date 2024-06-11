// Math.min is a built-in JavaScript function that returns the smallest of zero or more numbers.
let x = [1,2,3,4,5]
let mymin = Math.min(...x)
console.log(mymin)
// Basic usage of Math.min
let min1 = Math.min(10, 20, 5, 30); // 5
console.log(min1); // Output: 5

// When no arguments are provided, Math.min returns Infinity
let min2 = Math.min(); // Infinity
console.log(min2); // Output: Infinity

// If any argument is not a number, Math.min returns NaN
let min3 = Math.min(10, '20', 5, 'thirty'); // NaN
console.log(min3); // Output: NaN

// Using Math.min with an array
// Math.min cannot be directly used with arrays, but we can use the spread operator to spread array elements as individual arguments
let nums = [10, 20, 5, 30];
let min4 = Math.min(...nums); // 5
console.log(min4); // Output: 5

// Special cases
let min5 = Math.min(10, 20, NaN, 30); // NaN, because NaN is involved
console.log(min5); // Output: NaN

let min6 = Math.min(10, -Infinity, 20); // -Infinity, because -Infinity is the smallest possible value
console.log(min6); // Output: -Infinity

// Combining Math.min with other functions
// Example: Find the smallest number in an array of arrays
let arrays = [[10, 20], [5, 30], [15, 25]];
let minOfArrays = Math.min(...arrays.map(arr => Math.min(...arr))); // 5
console.log(minOfArrays); // Output: 5

// Example: Using Math.min to limit a value within a range
let value = 50;
let minValue = 10;
let maxValue = 30;
// This will clamp the value to be no less than minValue
let clampedValue = Math.min(Math.max(value, minValue), maxValue); // 30
console.log(clampedValue); // Output: 30

// Advanced usage: Finding the minimum value in a more complex structure
let objects = [{a: 10}, {a: 20}, {a: 5}, {a: 30}];
let minObjectValue = Math.min(...objects.map(obj => obj.a)); // 5
console.log(minObjectValue); // Output: 5

// Combining with reduce to find the minimum value
let reduceMin = nums.reduce((acc, num) => Math.min(acc, num), Infinity); // 5
console.log(reduceMin); // Output: 5

// Using Math.min with function arguments
function findMin() {
    return Math.min(...arguments);
}
console.log(findMin(10, 20, 5, 30)); // Output: 5

// Handling special cases in real-world scenarios
// Example: Finding the minimum positive number in an array
let numsWithNegatives = [-10, 0, 20, 5, -30, 30];
let minPositive = Math.min(...numsWithNegatives.filter(num => num > 0)); // 5
console.log(minPositive); // Output: 5

// Edge case: Empty array
let emptyArray = [];
let minEmpty = Math.min(...emptyArray); // Infinity
console.log(minEmpty); // Output: Infinity

// Edge case: Array with all NaNs
let allNaNs = [NaN, NaN, NaN];
let minNaNs = Math.min(...allNaNs); // NaN
console.log(minNaNs); // Output: NaN

// Combining Math.min with default values
// Example: Find the minimum value, but provide a default if the array is empty
let safeMin = nums.length ? Math.min(...nums) : 0; // 5 if nums is not empty, otherwise 0
console.log(safeMin); // Output: 5

// Note: Math.min is quite versatile, but it's important to handle special cases like NaNs and empty arrays to avoid unexpected results.
