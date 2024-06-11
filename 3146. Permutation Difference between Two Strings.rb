#* 3146. Permutation Difference between Two Strings
s = "abc"; t = "bac"
#* LEARN => SL SUPERLEARN CHAR TO INDEX CHARACTER TO INDEX MAPPING
# @param {String} s
# @param {String} t
# @return {Integer}
#*
def find_permutation_difference(s, t)
  sc = s.each_char.with_index.to_h
  tc = t.each_char.with_index.to_h
  tc.sum{|key,value| (tc[key] - sc[key]).abs }
end
p find_permutation_difference(s, t)

#*
def find_permutation_difference(s, t)
  count=0
  p sc = s.each_char.with_index.to_h
  p tc = t.each_char.with_index.to_h
  tc.each {|key, value| count += (tc[key] - sc[key]).abs  }
  count
end
p find_permutation_difference(s, t)


#* TESTS
def find_permutation_difference(s, t)
  p s.chars.each_with_index.to_a
  p t.each_char.with_index.to_h
end
p find_permutation_difference(s, t)

#* MISC

# SUPER METHODS:
# Creating character-to-index mappings =>
# s = "example"; t = "samplex"
# ruby:
# s.each_char.with_index.to_h => {val => index}
# t.chars.each_with_index.to_a => [val, index]

# python:
# sc = {char: index for index, char in enumerate(s)}
# tc = list(enumerate(t))

# print(sc)  # Output: {'e': 0, 'x': 1, 'a': 2, 'm': 3, 'p': 4, 'l': 5, 'e': 6}
# print(tc)  # Output: [(0, 's'), (1, 'a'), (2, 'm'), (3, 'p'), (4, 'l'), (5, 'e'), (6, 'x')]

# js:

# let sc = [...s].reduce((acc, char, index) => {
#   acc[char] = index;
#   return acc;
# }, {});

# let tc = [...t].map((char, index) => [index, char]);

# console.log(sc);  // Output: { e: 0, x: 1, a: 2, m: 3, p: 4, l: 5 }
# console.log(tc);  // Output: [[0, 's'], [1, 'a'], [2, 'm'], [3, 'p'], [4, 'l'], [5, 'e'], [6, 'x']]