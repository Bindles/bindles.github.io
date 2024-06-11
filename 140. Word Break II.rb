#* 140. Word Break II
s = "catsanddog", word_dict = ["cat","cats","and","sand","dog"]
# @param {String} s
# @param {String[]} word_dict
# @return {String[]}
#*
def word_break(s, word_dict)
    f = lambda do |i|
    result = word_dict.include?(s[i..-1]) ? [s[i..-1]] : []
    (i+1...s.length).each do |j|
        if word_dict.include?(s[i...j])
        f.call(j).each do |t|
            result << s[i...j] + ' ' + t
        end
        end
    end
    result
    end

    f.call(0)
end
p word_break(s, word_dict)
  