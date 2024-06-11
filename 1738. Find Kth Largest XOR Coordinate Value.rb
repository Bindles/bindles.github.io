#* 1738. Find Kth Largest XOR Coordinate Value
#matrix = [[5,2],[1,6]]; k = 1
#matrix = [[5,2],[1,6]]; k = 2
matrix = [[5,2],[1,6]]; k = 3
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
#*
def max_distance(position, m)
  position.sort!
  left, right = 1, position[-1] - position[0]

  can_place = lambda do |min_force|
    count = 1
    last_position = position[0]
    position.each do |pos|
      if pos - last_position >= min_force
        count += 1
        last_position = pos
      end
      return true if count >= m
    end
    false
  end

  while left < right
    mid = (left + right + 1) / 2
    if can_place.call(mid)
      left = mid
    else
      right = mid - 1
    end
  end

  left
end

# Example usage:
p max_distance([1, 2, 3, 4, 7], 3) # Output: 3
p max_distance([5, 4, 3, 2, 1, 1000000000], 2) # Output: 999999999

#*
def max_distance(position, m)
  position.sort!
  
  can_place_balls = lambda do |min_force|
    count = 1
    last_position = position[0]
    position.each do |pos|
      if pos - last_position >= min_force
        count += 1
        last_position = pos
      end
      return true if count >= m
    end
    false
  end

  (1..(position[-1] - position[0])).bsearch { |d| !can_place_balls.call(d) } - 1
end

# Example usage:
p max_distance([1, 2, 3, 4, 7], 3) # Output: 3
p max_distance([5, 4, 3, 2, 1, 1000000000], 2) # Output: 999999999

#*WORKING . . .
#*
def kth_largest_value(matrix, k)
  matrix.map.with_index{|ea, index| [index, ea.reduce(:^)]}
    
end
p kth_largest_value(matrix, k)

#*
def kth_largest_value(matrix, k)
  n=matrix.size
  matrix.each_index do |i|
    (i...n).each do |j|
      p [matrix[i], matrix[j]]
    end
  end
    
end
p kth_largest_value(matrix, k)

p 5^2
p 1^6