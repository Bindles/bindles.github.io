match?(/\A[aeiou]+\z/) # match vowels => all chars are vowels | no non vowels*

(0...n).sum do |start|
  (start...n).count do |end_pos|
    substring = word[start..end_pos]
    substring.match?(/\A[aeiou]+\z/) && vowels.all? { |vowel| substring.include?(vowel) }
  end
end