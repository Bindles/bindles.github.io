#* 2496. Maximum Value of a String in an Array
strs = ["alic3","bob","3","4","00000"]
# @param {String[]} strs
# @return {Integer}
def maximum_value(strs)
  res=[]
  strs.each do |str|
    if str.match?(/^\d+$/)
      p str 
      p res << str.to_i
    else
      p res << str.size
    end
  end
  res.max
end
p maximum_value(strs)

def maximum_value(strs)
  strs.map{|str| str.match?(/^\d+$/) ? str.to_i : str.size }.max
end
p maximum_value(strs)

def maximum_value(strs)
  strs.map{|str| str.match?(/[a-z]/) ? str.size : str.to_i }.max
end
p maximum_value(strs)




