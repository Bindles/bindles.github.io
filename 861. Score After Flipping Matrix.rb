#* 861. Score After Flipping Matrix
grid = [[0,0,1,1],[1,0,1,0],[1,1,0,0]]
# @param {Integer[][]} grid
# @return {Integer}
#* COUNT
def matrix_score(grid)
  n = grid.length
  m = grid[0].length
  res = 0

  (0...m).each do |j|
    set_count = (0...n).count { |i| grid[i][j] == grid[i][0] }
    res += [set_count, n - set_count].max * (1 << (m - 1 - j))
  end

  res
end
p matrix_score(grid)

#* EACH READABILITY
def matrix_score(grid)
  row_size = grid.size
  col_size = grid[0].size
  res = 0

  (0...col_size).each do |j|
    set_count = (0...row_size).count { |i| grid[i][j] == grid[i][0] }
    res += [set_count, row_size - set_count].max * (1 << (col_size - 1 - j))
  end

  res
end
p matrix_score(grid)
