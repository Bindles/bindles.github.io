#* 8. String to Integer (atoi)
s = "42"
class String
  def str_to_int_atoi
    self.to_i.clamp(-2147483648, 2147483647)
  end
end
p s.str_to_int_atoi
# @param {String} s
# @return {Integer}
#*
def my_atoi(s)
  s.to_i.clamp(-2147483648, 2147483647)
end
#*
def my_atoi(s)
  num = s.to_i #automatically = s.strip!
  num.clamp(-2147483648, 2147483647)
end

# Example usage
puts my_atoi("42")               # Output: 42
puts my_atoi("   -42")           # Output: -42
puts my_atoi("4193 with words")  # Output: 4193
puts my_atoi("words and 987")    # Output: 0
puts my_atoi("-91283472332")     # Output: -2147483648
puts my_atoi("21474836460")      # Output: 2147483647

#*
def my_atoi(s)
  [[-2147483648, s.to_i].max, 2147483647].min
end
p my_atoi(s)

#*
def my_atoi(s)
  int = s.to_i
  low_clamp = -2**31
  return low_clamp if int < low_clamp

  high_clamp = 2**31-1
  return high_clamp if int > high_clamp

  int
end
p my_atoi(s)





#* MISC
number = 10

puts number.clamp(5, 15)   # Output: 10 (within the range, so it returns the number itself)
puts number.clamp(0, 5)    # Output: 5 (greater than the upper bound, so it returns the upper bound)
puts number.clamp(15, 20)  # Output: 15 (less than the lower bound, so it returns the lower bound)

