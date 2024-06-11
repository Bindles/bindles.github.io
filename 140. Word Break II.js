// 140. Word Break II
s = "catsanddog", wordDict = ["cat","cats","and","sand","dog"]
/**
 * @param {string} s
 * @param {string[]} wordDict
 * @return {string[]}
 */
var wordBreak = function(s, wordDict) {
    const f = (i) => {
        let result = wordDict.includes(s.slice(i)) ? [s.slice(i)] : [];
        for (let j = i + 1; j < s.length; j++) {
            if (wordDict.includes(s.slice(i, j))) {
                for (let t of f(j)) {
                    result.push(s.slice(i, j) + ' ' + t);
                }
            }
        }
        return result;
    };

    return f(0);
};
console.log(wordBreak(s,wordDict))

