// 2062. Count Vowel Substrings of a String
word = "aeiouu"
// word = "cuaieuouac"

var countVowelSubstrings = function(word) {
  const vowels = new Set(['a', 'e', 'i', 'o', 'u']);
  const n = word.length;
  let count = 0;

  for (let start = 0; start < n; start++) {
    for (let endPos = start; endPos < n; endPos++) {
      const substring = word.substring(start, endPos + 1);
      if (Array.from(substring).every(char => vowels.has(char)) && [...vowels].every(vowel => substring.includes(vowel))) {
        count++;
      }
    }
  }

  return count;
}


var word = "aeiouu";
console.log(countVowelSubstrings(word));  // Output: 2
word = "unicornarihan";
console.log(countVowelSubstrings(word));  // Output: 0
word = "cuaieuouac";
console.log(countVowelSubstrings(word));  // Output: 7
