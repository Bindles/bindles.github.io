#* 806. Number of Lines To Write String
widths = [4,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]; s = "bbbcccdddaaa"
# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
#*
def number_of_lines(widths, s)
  lines = 1
  width = 0
  s.chars.each do |c|
    char_width = widths[c.ord - 'a'.ord]
    if width + char_width > 100
        lines += 1
        width = char_width
    else
        width += char_width
    end
  end 
  [lines, width]
end