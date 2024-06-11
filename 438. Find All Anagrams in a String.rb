#* 438. Find All Anagrams in a String
s = "cbaebabacd"; p = "abc"
# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
    
end

def find_anagrams(s, p)
  result = []
  return result if s.length < p.length

  # Count frequency of characters in p
  p_count = Hash.new(0)
  p.each_char { |char| p_count[char] += 1 }

  # Sliding window on s
  window_count = Hash.new(0)
  p.length.times { |i| window_count[s[i]] += 1 }

  # Check the initial window
  result << 0 if window_count == p_count

  # Slide the window across s
  (p.length...s.length).each do |i|
    start_char = s[i - p.length]
    end_char = s[i]

    window_count[end_char] += 1
    window_count[start_char] -= 1

    window_count.delete(start_char) if window_count[start_char] == 0

    result << (i - p.length + 1) if window_count == p_count
  end

  result
end

# Example usage:
s = "cbaebabacd"
p = "abc"
p find_anagrams(s, p) # Output: [0, 6]

s = "abab"
p = "ab"
p find_anagrams(s, p) # Output: [0, 1, 2]


# require 'test/unit'
# class Test_find_anagrams < Test::Unit::TestCase
#     def test_
#         assert_equal [0,6], find_anagrams(s = "cbaebabacd", p = "abc")
#         assert_equal [0,1,2], find_anagrams(s = "abab", p = "ab")
#     end
# end