#* 1252. Cells with Odd Values in a Matrix
m = 2; n = 3; indices = [[0,1],[1,1]]

def oddCells(m, n, indices): #m=col|n=row
  matrix = [ [0] * n for _ in range(m) ]

  for rc in indices:
    for i in range(n):
      matrix[rc[0]][i] += 1
    for i in range(m):
      matrix[i][rc[1]] += 1
  
  return sum(cell % 2 != 0 for row in matrix for cell in row)

#   matrix.flatten.count{|c| c.odd?}
# end
# p odd_cells(m, n, indices)

# def odd_cells(m, n, indices) #m=col|n=row
#   matrix = Array.new(m){Array.new(n){0}}
#   indices.each {|rc|
#     (0...n).each do |i| 
#       matrix[rc[0]][i] += 1
#     end
#     (0...m).each do |i|
#       matrix[i][rc[1]] += 1
#     end
#   }
#   matrix.flatten.count{|c| c.odd?}
# end
# p odd_cells(m, n, indices)