SUPER METHODS:
Creating character-to-index mappings =>
s = "example"; t = "samplex"
ruby:
s.each_char.with_index.to_h => {val => index}
t.chars.each_with_index.to_a => [val, index]

python:
sc = {char: index for index, char in enumerate(s)}
tc = list(enumerate(t))

print(sc)  # Output: {'e': 0, 'x': 1, 'a': 2, 'm': 3, 'p': 4, 'l': 5, 'e': 6}
print(tc)  # Output: [(0, 's'), (1, 'a'), (2, 'm'), (3, 'p'), (4, 'l'), (5, 'e'), (6, 'x')]

js:

let sc = [...s].reduce((acc, char, index) => {
  acc[char] = index;
  return acc;
}, {});

let tc = [...t].map((char, index) => [index, char]);

console.log(sc);  // Output: { e: 0, x: 1, a: 2, m: 3, p: 4, l: 5 }
console.log(tc);  // Output: [[0, 's'], [1, 'a'], [2, 'm'], [3, 'p'], [4, 'l'], [5, 'e'], [6, 'x']]