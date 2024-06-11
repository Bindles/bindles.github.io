#* 2185. Counting Words With a Given Prefix
words = ["pay","attention","practice","attend"]; pref = "at"
# @param {String[]} words
# @param {String} pref
# @return {Integer}
#*
def prefixCount(words, pref):
  return sum(word.startswith(pref) for word in words)

print(prefixCount(words, pref))

#*
def prefixCount(words, pref):
  return sum(word[0:len(pref)] == pref for word in words)

print(prefixCount(words, pref))

#*
def prefixCount(words, pref):
  result=0
  for word in words:
    print(word[0:2])
    if word[0:2] == pref:
      result+=1

  return result
    
print(prefixCount(words, pref))











