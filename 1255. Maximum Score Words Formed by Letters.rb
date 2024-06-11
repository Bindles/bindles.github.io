#* 1255. Maximum Score Words Formed by Letters
words = ["dog","cat","dad","good"]; letters = ["a","a","c","d","d","d","g","o","o"]; score = [1,0,9,5,0,0,3,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0]
#* DOESNT WORK
def max_score_words(words, letters, score)
  f = ->(x) { x.sum { |c| score[c.ord - 97] } }
  ans = 0

  dfs = lambda do |words, letters, tally|
    words.each_with_index do |word, i|
      c_word = word.chars.tally
      if c_word.all? { |c, count| letters[c] >= count }
        ans = [ans, dfs.call(words[i+1..-1], letters.merge(c_word) { |k, v1, v2| v1 - v2 }, tally + f.call(word.chars))].max
      end
    end
    ans = [ans, tally].max
  end

  dfs.call(words, letters.tally, 0)
end
p max_score_words(words, letters, score)

        