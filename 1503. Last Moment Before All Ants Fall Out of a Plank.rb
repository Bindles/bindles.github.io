#* 1503. Last Moment Before All Ants Fall Out of a Plank
n = 4; left = [4,3]; right = [0,1]
# @param {Integer} n
# @param {Integer[]} left
# @param {Integer[]} right
# @return {Integer}
def get_last_moment(n, left, right)
    left_index = left.empty? ? 0 : left.max
    right_index = right.empty? ? n : right.min
    [left_index, n - right_index].max
end
p get_last_moment(n, left, right)