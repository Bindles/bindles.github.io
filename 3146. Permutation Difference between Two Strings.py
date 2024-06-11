#PYTHON 
#* 3146. Permutation Difference between Two Strings
s = "abc"; t = "bac"
x=["a,b,c"]
from typing import List
from collections import Counter
#*
class Solution:
    def findPermutationDifference(self, s: str, t: str) -> int:
        sc = {char : index for index, char in enumerate(s)}
        tc = {char : index for index, char in enumerate(t)}
        return sum(abs(tc[char] - sc[char]) for char in tc)
        

print(Solution().findPermutationDifference(s,t))

#*
class Solution:
    def findPermutationDifference(self, s: str, t: str) -> int:
        count=0
        sc = {char : index for index, char in enumerate(s)}
        tc = {char : index for index, char in enumerate(t)}

        for key in sc:
            count += (abs(sc[key] - tc[key]))

        return count
        
print(Solution().findPermutationDifference(s,t))

#*
def find_permutation_difference(s, t):
  count=0
  sc = {char : index for index, char in enumerate(s)}
  tc = {char : index for index, char in enumerate(t)}
  print(sc, tc)

  for key in sc:
    print(abs(sc[key] - tc[key]))
    count += (abs(sc[key] - tc[key]))

  return count

print(find_permutation_difference(s,t))



#* TESTS
#*
def find_permutation_difference(s, t):
  sc = Counter(s)
  tc = Counter(t)
  print(sc, tc)

  for key in sc:
    print(key)

print(find_permutation_difference(s,t))

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



