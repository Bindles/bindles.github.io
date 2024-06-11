#* 1002. Find Common Characters
words = ["bella","label","roller"]
# @param {String[]} words
# @return {String[]}
def common_chars(words)
  words = words.split(',')
  words[0] & words[1] & words[2]
end

def common_chars(words)
  p ['a','b'] & ['b','c']
end
common_chars(words)

words.each do |word|
  p word.split('')
end

#* FINISH THIS SOL
def common_chars(words)
  res=[]
  a = words.map{|w| w.split('')}
  a.each_with_index do |word, i|
    #res = a[i] & a[i+1]
  end
end
p common_chars(words)

# @param {String[]} words
# @return {String[]}
def common_chars(words)
  # Convert each word to an array of characters
  char_arrays = words.map { |word| word.chars }

  # Initialize the result with the first array of characters
  result = char_arrays[0]

  # Intersect the result with each subsequent array of characters
  char_arrays[1..-1].each do |char_array|
    result = result & char_array
  end

  result
end

def common_chars(words)
  char_arrays = words.map { |word| word.chars }
  result = char_arrays[0]
  char_arrays[1..].each do |char_array|
    result = result & char_array
  end

  result
end


# @param {String[]} words
# @return {String[]}
def common_chars(words)
  # Convert each word to a hash of character counts
  char_counts = words.map { |word| word.chars.tally }

  # Reduce the array of hashes to a single hash containing the minimum counts
  common_counts = char_counts.reduce do |acc, counts|
    acc.merge(counts) { |char, a_count, b_count| [a_count, b_count].min }
  end

  # Convert the common counts hash back to an array of characters
  common_counts.flat_map { |char, count| [char] * count }
end

# @param {String[]} words
# @return {String[]}
#* GOT IT !
def common_chars(words)
  # Initialize a hash with default value of 0 to count the min occurrences of each character
  min_counts = words[0].chars.tally
  words[1..].each do |word|
    counts = word.chars.tally
    min_counts.each do |char, count|
      min_counts[char] = [count, counts[char] || 0].min
    end
  end
  min_counts.flat_map { |char, count| [char] * count }
end

def common_chars(words)
  words.map(&:chars).reduce(:&).flatten
end

def common_chars(words)
  words.map { |word| word.chars }.reduce { |acc, elem| acc & elem }
end

def common_chars(words)
  words.map(&:chars).reduce(&:&)
end


words = ["bella", "label", "roller"]
p common_chars(words)  # Output: ["e", "l", "l"]


words = ["bella", "label", "roller"]
p common_chars(words)  # Output: ["e", "l", "l"]


words = ["bella", "label", "roller"]
p common_chars(words)  # Output: ["e", "l", "l"]

p ["a", "a"] & ["a", "a", "b"]
