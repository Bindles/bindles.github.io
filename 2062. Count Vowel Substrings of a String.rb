#* 2062. Count Vowel Substrings of a String
word = "aeiouu"
# word = "cuaieuouac"
# @param {String} word
# @return {Integer}


#* 1.1 SUM/COUNT NO REGEX
def count_vowel_substrings(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  n = word.length

  (0...n).sum do |start|
    (start...n).count do |end_pos|
      substring = word[start..end_pos]
      substring.chars.all? { |char| vowels.include?(char) } && vowels.all? { |vowel| substring.include?(vowel) }
    end
  end
end
word = "aeiouu"
puts count_vowel_substrings(word)  # Output: 2
word = "unicornarihan"
puts count_vowel_substrings(word)  # Output: 0
word = "cuaieuouac"
puts count_vowel_substrings(word)  # Output: 7
p '-'

#* 1.0 EA NO REGEX
def count_vowel_substrings(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  n = word.length
  count = 0
  
  (0...n).each do |start|
    (start...n).each do |end_pos|
      substring = word[start..end_pos]
      if substring.chars.all? { |char| vowels.include?(char) } && vowels.all? { |vowel| substring.include?(vowel) }
        count += 1
      end
    end
  end
  
  count
end
word = "aeiouu"
puts count_vowel_substrings(word)  # Output: 2
word = "unicornarihan"
puts count_vowel_substrings(word)  # Output: 0
word = "cuaieuouac"
puts count_vowel_substrings(word)  # Output: 7
p '-'



#* 2.1 SUM/COUNT REGEX
def count_vowel_substrings(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  n = word.length

  (0...n).sum do |start|
    (start...n).count do |end_pos|
      substring = word[start..end_pos]
      substring.match?(/\A[aeiou]+\z/) && vowels.all? { |vowel| substring.include?(vowel) }
    end
  end
end
word = "aeiouu"
puts count_vowel_substrings(word)  # Output: 2
word = "unicornarihan"
puts count_vowel_substrings(word)  # Output: 0
word = "cuaieuouac"
puts count_vowel_substrings(word)  # Output: 7
p '-'

#* 2.0 EA REGEX
def count_vowel_substrings(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  n = word.length
  count = 0
  
  (0...n).each do |start|
    (start...n).each do |end_pos|
      substring = word[start..end_pos]
        count += 1 if substring.match?(/\A[aeiou]+\z/) && vowels.all? { |vowel| substring.include?(vowel) }
      end
    end
  
  
  count
end
word = "aeiouu"
puts count_vowel_substrings(word)  # Output: 2
word = "unicornarihan"
puts count_vowel_substrings(word)  # Output: 0
word = "cuaieuouac"
puts count_vowel_substrings(word)  # Output: 7
p '-END-'



#* WORKING . . .
#*
def count_vowel_substrings(word)
  #vowels = ['a', 'e', 'i', 'o', 'u']
  n = word.length
  count = 0
  
  (0...n).each do |start|
    (start...n).each do |end_pos|
      substring = word[start..end_pos]
      count+=1 if substring.include?('a') && substring.include?('e') && substring.include?('i') && substring.include?('o') && substring.include?('u')
    end
  end
  
  count
end

#*
def count_vowel_substrings(word)
  count=0
  (0..word.size - 5).each do |i|
    window =  word[i, i+5]
    p window
    count+=1 if window.include?('a') && window.include?('a') && window.include?('a') && window.include?('a') && window.include?('a')
  end
  count
end
p count_vowel_substrings(word)

#* MISC OTHER Q
s1 = "this apple is sweet"; s2 = "this apple is sour"
p s1.split(' ').map(&:chars).reduce(:|).flatten