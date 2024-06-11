#* 1351. Count Negative Numbers in a Sorted Matrix
grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
    grid.each do |row|
        p row.count{|n| n < 0}
    end
end
p count_negatives(grid)


arr=[1,2,3,4]
p arr.count{|n| n < 2}

p grid.flatten.count{|n| n < 0}