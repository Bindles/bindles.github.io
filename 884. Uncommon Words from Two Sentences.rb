#* 884. Uncommon Words from Two Sentences
#s1 = "this apple is sweet"; s2 = "this apple is sour"
s1 = "apple apple"; s2 = "banana"
# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  p a = s1.split(' ')
  p b = s2.split(' ')
  res=[]
  a.each do |aa|
    b.each do |bb|
      p "#{aa} #{bb}"
      res << aa if aa != bb
    end
  end
    res
end
p uncommon_from_sentences(s1, s2)

p '**'

def uncommon_from_sentences(s1, s2)
  p a = s1.split(' ')
  p b = s2.split(' ')
  x = a.union(b)
  p a.count('apple')
  p x
  p x
  res=[]
  a.each do |aa|
    b.each do |bb|
      p "#{aa} #{bb}"
      res << aa if aa == bb || a.count(aa) < 2
    end
  end
  p res
  p res
    res.each do |word|
      x.delete(word)
    end
    x
end
p uncommon_from_sentences(s1, s2)

p '--'

#* WORKS | NEED CLEANUP | SEE BOTTOM STARTED
def uncommon_from_sentences(s1, s2)
  p a = s1.split(' ')
  p b = s2.split(' ')
  x = a.union(b)
  p a.count('apple')
  p x
  p x
  res=[]
  a.each do |aa|
    b.each do |bb|
      p "#{aa} #{bb}"
      res << aa if aa == bb 
    end
  end
  a.each do |aa|
    res << aa if a.count(aa) > 1
  end
  b.each do |bb|
    res << bb if b.count(bb) > 1
  end
  p res
  p res
  p res
  p res
    res.uniq.each do |word|
      x.delete(word)
    end
    x
end
p uncommon_from_sentences(s1, s2)

#* WORKS | NEED CLEANUP
def uncommon_from_sentences(s1, s2)
  p a = s1.split(' ')
  p b = s2.split(' ')
  x = a.union(b)
  p a.count('apple')
  p x
  p x
  res=[]
  a.each do |aa|
    b.each do |bb|
      p "#{aa} #{bb}"
      res << aa if aa == bb || a.count(aa) > 1
    end
  end

  p res
  p res
  p res
  p res
    res.uniq.each do |word|
      x.delete(word)
    end
    x
end
p uncommon_from_sentences(s1, s2)

# def uncommon_from_sentences(s1, s2)
#   p a = s1.split(' ')
#   p b = s2.split(' ')
#   res= a.union(b)
#   p res
#   a.each do |aa|
#     b.each do |bb|
#       p "#{aa} #{bb}"
#       res << aa if aa != bb
#     end
#   end
#     res
# end
# p uncommon_from_sentences(s1, s2)

zz=['a', 'b']
p zz
zz.delete('a')
p zz