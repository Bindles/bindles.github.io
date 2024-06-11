#* 2185. Counting Words With a Given Prefix
words = ["pay","attention","practice","attend"]; pref = "at"
# @param {String[]} words
# @param {String} pref
# @return {Integer}
#*
def prefix_count(words, pref)
    words.select{|word| word[0...pref.size] == pref }.size
end
pprefix_count(words, pref) 