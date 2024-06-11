// 861. Score After Flipping Matrix
grid = [[0,0,1,1],[1,0,1,0],[1,1,0,0]]
/**
 * @param {number[][]} grid
 * @return {number}
 */
var matrixScore = function(grid) {
  const rowSize = grid.length;    // Number of rows
  const colSize = grid[0].length; // Number of columns
  let res = 0;

  for (let j = 0; j < colSize; j++) {
    let setCount = 0;
    for (let i = 0; i < rowSize; i++) {
      if (grid[i][j] === grid[i][0]) {
        setCount++;
      }
    }
    res += Math.max(setCount, rowSize - setCount) * (1 << (colSize - 1 - j));
  }

  return res;
}
console.log(matrixScore(grid));  // Output: 39
