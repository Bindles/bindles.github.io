#* 1252. Cells with Odd Values in a Matrix
m = 2; n = 3; indices = [[0,1],[1,1]]
# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(m, n, indices) #m=col|n=row
  matrix = Array.new(m){Array.new(n){0}}
  indices.each {|rc|
    (0...n).each do |i| 
      matrix[rc[0]][i] += 1
    end
    (0...m).each do |i|
      matrix[i][rc[1]] += 1
    end
  }
  matrix.flatten.count{|c| c.odd?}
end
p odd_cells(m, n, indices)