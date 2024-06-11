// 1252. Cells with Odd Values in a Matrix
m = 2; n = 3; indices = [[0,1],[1,1]]

function oddCells(m, n, indices) {
  let matrix = Array.from({ length: m }, () => Array(n).fill(0));
  
  indices.forEach(([r, c]) => {
      for (let i = 0; i < n; i++) {
          matrix[r][i] += 1;
      }
      for (let i = 0; i < m; i++) {
          matrix[i][c] += 1;
      }
  });

  return matrix.flat().filter(c => c % 2 !== 0).length;
}
console.log(oddCells(m, n, indices));  // Output: 6
