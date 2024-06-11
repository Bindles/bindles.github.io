// 2185. Counting Words With a Given Prefix
words = ["pay","attention","practice","attend"]; pref = "at"
/**
 * @param {string[]} words
 * @param {string} pref
 * @return {number}
 */
var prefixCount = function(words, pref) {
    return words.filter(word => word.slice(0, pref.length) == pref).length
};
console.log(prefixCount(words, pref))

console.log (
    words[0, 2]
)

for (word in words) { //index of words
    console.log(words[word])
}

for (word of words) { // of words | string => char of string | array => word of arr
    console.log(word.slice(0,2))
}

for (letter of "himan") {
    console.log(letter)
}