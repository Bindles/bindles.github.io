#* 2124. Check if All A's Appears Before All B's
s = "aaabbb"
# @param {String} s
# @return {Boolean}
def check_string(s)
  s.each_char.with_index.to_h.yield_self{|hash| hash['a'] < hash['b']}
end
p check_string(s)

def check_string(s)
  hash = s.each_char.with_index.to_h
  hash['a'] < hash['b']
end
p check_string(s)

def check_string(s)
  hash = s.each_char.with_index.to_h
  hash.each {|k,v| p v}
end
p check_string(s)

def check_string(s)
  s.each_char.with_index.to_h['a'] < s.each_char.with_index.to_h['b']
end
p check_string(s)

def check_string(s)
  !s.include?('ba')
end