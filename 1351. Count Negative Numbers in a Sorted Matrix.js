// 1351. Count Negative Numbers in a Sorted Matrix
grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
/**
 * @param {number[][]} grid
 * @return {number}
 */
var countNegatives = function(grid) {
    return grid.flat().filter(num => num < 0).length;
};
console.log(countNegatives(grid));  // Output: 8