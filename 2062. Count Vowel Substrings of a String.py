#* 2062. Count Vowel Substrings of a String
word = "aeiouu"
# word = "cuaieuouac"
#* 
def count_vowel_substrings(word):
  vowels = {'a', 'e', 'i', 'o', 'u'}
  n=len(word)
  count=0
  for start in range(n):
    for end_pos in range(start,n):
      substring=word[start:end_pos+1]
      print(substring)
      if set(substring).issubset(vowels) and vowels.issubset(substring):
        count+=1
        print(count)

  return count

print(count_vowel_substrings(word))

#*
def count_vowel_substrings(word):
    vowels = {'a', 'e', 'i', 'o', 'u'}
    n = len(word)

    return sum(
        sum(
            1 for end_pos in range(start, n)
            if set(word[start:end_pos + 1]).issubset(vowels) and vowels.issubset(word[start:end_pos + 1])
        ) for start in range(n)
    )

word = "aeiouu"
print(count_vowel_substrings(word))  # Output: 2
word = "unicornarihan"
print(count_vowel_substrings(word))  # Output: 0
word = "cuaieuouac"
print(count_vowel_substrings(word))  # Output: 7

#* list comprehension | .sum x1
def count_vowel_substrings(word):
    vowels = {'a', 'e', 'i', 'o', 'u'}
    n = len(word)

    return sum(
        1 for start in range(n)
        for end_pos in range(start, n)
        if set(word[start:end_pos + 1]).issubset(vowels) and vowels.issubset(word[start:end_pos + 1])
    )

word = "aeiouu"
print(count_vowel_substrings(word))  # Output: 2
word = "unicornarihan"
print(count_vowel_substrings(word))  # Output: 0
word = "cuaieuouac"
print(count_vowel_substrings(word))  # Output: 7



