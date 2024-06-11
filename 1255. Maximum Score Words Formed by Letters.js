// 1255. Maximum Score Words Formed by Letters
words = ["dog","cat","dad","good"]; letters = ["a","a","c","d","d","d","g","o","o"]; score = [1,0,9,5,0,0,3,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0]
/**
 * @param {string[]} words
 * @param {character[]} letters
 * @param {number[]} score
 * @return {number}
 */
var maxScoreWords = function(words, letters, score) {
    const f = x => x.split('').reduce((sum, c) => sum + score[c.charCodeAt(0) - 97], 0);
    let result = 0;
  
    function dfs(words, letters, tally) {
      for (let i = 0; i < words.length; i++) {
        let cWord = {};
        for (let c of words[i]) {
          cWord[c] = (cWord[c] || 0) + 1;
        }
        if (Object.keys(cWord).every(c => letters[c] >= cWord[c])) {
          let newLetters = { ...letters };
          for (let c in cWord) {
            newLetters[c] -= cWord[c];
          }
          dfs(words.slice(i + 1), newLetters, tally + f(words[i]));
        }
      }
      result = Math.max(result, tally);
      return result;
    }
  
    let lettersCount = {};
    for (let c of letters) {
      lettersCount[c] = (lettersCount[c] || 0) + 1;
    }
  
    return dfs(words, lettersCount, 0);
  };
  console.log(maxScoreWords(words,letters,score))


  x="myass"

  for (let z of x) {
    console.log(z)
  }