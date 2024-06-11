#* 1779. Find Nearest Point That Has the Same X or Y Coordinate
x = 3; y = 4; points = [[1,2],[3,1],[2,4],[2,3],[4,4]]
# @param {Integer} x
# @param {Integer} y
# @param {Integer[][]} points
# @return {Integer}
def nearest_valid_point(x, y, points)
  min_distance = Float::INFINITY
  min_index = -1

  points.each_with_index do |(px, py), index|
    if px == x || py == y
      distance = (x - px).abs + (y - py).abs
      if distance < min_distance
        min_distance = distance
        min_index = index
      end
    end
  end

  min_index
end
p nearest_valid_point(x, y, points)