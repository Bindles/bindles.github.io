// 1779. Find Nearest Point That Has the Same X or Y Coordinate
x = 3; y = 4; points = [[1,2],[3,1],[2,4],[2,3],[4,4]]
/**
 * @param {number} x
 * @param {number} y
 * @param {number[][]} points
 * @return {number}
 */
var nearestValidPoint = function(x, y, points) {
  let minDistance = Infinity;
  let minIndex = -1;

  for (let i = 0; i < points.length; i++) {
    let [px, py] = points[i];
    if (px === x || py === y) {
      let distance = Math.abs(x - px) + Math.abs(y - py);
      if (distance < minDistance) {
        minDistance = distance;
        minIndex = i;
      }
    }
  }

  return minIndex;
};
console.log(nearestValidPoint(x, y, points)); // => 2
