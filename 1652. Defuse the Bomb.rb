#* 1652. Defuse the Bomb
code = [5,7,1,4]; k = 3
# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  n=code.size
  code.each_with_index do |c, i|
    #if n-1 < k
      p "#{code[i+1..k]} #{code[z]}"
      p x = k - (k-i)
      p z = (0..x).to_a
    #end
  end
    
end
p decrypt(code, k)

p code[2..3]


# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}

def decrypt(code, k)
  n = code.size
  return [0] * n if k == 0

  double_array = code * 2
  (0...n).map { |i| k > 0 ? double_array[i + 1, k].sum : double_array[i + n + k, -k].sum }
end