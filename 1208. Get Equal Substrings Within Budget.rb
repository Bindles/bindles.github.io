#* 1208. Get Equal Substrings Within Budget
s = "abcd"; t = "bcdf"; max_cost = 3
# @param {String} s
# @param {String} t
# @param {Integer} max_cost
# @return {Integer}
#*
def equal_substring(s, t, max_cost)
    left = tcost = maxlen = 0
  
    s.chars.each_index do |right|
      tcost += (s[right].ord - t[right].ord).abs
  
      while tcost > max_cost
        tcost -= (s[left].ord - t[left].ord).abs
        left += 1
      end
  
      maxlen = [maxlen, right - left + 1].max
    end
  
    maxlen
end

#* DIDNT PASS END CASE? SAME EXACT CODE AS ABOVE I THINK
def equal_substring(s, t, max_cost)
    left = tcost = maxlen = 0
    s.chars.each_index do |right|
        tcost+= (s[right].ord - t[right].ord).abs

        while tcost > max_cost
            tcost -= (s[left].ord - t[left].ord).abs
            left+=1

            maxlen = [maxlen, right - left+1].max

        return maxlen
        end
    end
end
p  equal_substring(s, t, max_cost)    

#* WORKING . . .
#* DONT WORK
#*
def equal_substring(s, t, max_cost)
    sum=0
    s.chars.each_index do |i|
        return sum if sum >= max_cost
        p "#{s[i]} #{t[i]}"
        p sum += (s[i].ord - t[i].ord).abs
    end
end
p  equal_substring(s, t, max_cost)

#*
def equal_substring(s, t, max_cost)
    sum=0
    s.chars.each_index do |i|
        return i-1 if sum >= max_cost
        p "#{s[i]} #{t[i]}"
        p sum += (s[i].ord - t[i].ord).abs
    end
end
p  equal_substring(s, t, max_cost)

def equal_substring(s, t, max_cost)
    sum=0
    i=0
    until sum >= max_cost || i == s.size
        p "#{s[i]} #{t[i]}"
        p sum += (s[i].ord - t[i].ord).abs
        i+=1
    end
    sum
end
p  equal_substring(s, t, max_cost)

def equal_substring(s, t, max_cost)
    sum=0
    i=0
    until sum >= max_cost || i == s.size
        p "#{s[i]} #{t[i]}"
        p sum += (s[i].ord - t[i].ord).abs
        i+=1
    end
    i
end
p  equal_substring(s, t, max_cost)