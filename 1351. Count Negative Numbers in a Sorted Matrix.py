#* 1351. Count Negative Numbers in a Sorted Matrix
grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
def count_negatives(grid):
    return sum(1 for num in [item for row in grid for item in row] if num < 0)

# Test cases
grid = [[4, 3, 2, -1], [3, 2, 1, -1], [1, 1, -1, -2], [-1, -1, -2, -3]]
print(count_negatives(grid))  # Output: 8
