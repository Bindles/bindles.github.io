#* Multiply Strings
num1 = "123"; num2 = "456"
# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  product = [0] * (num1.size + num2.size)
  
  (num1.size - 1).downto(0) do |i|
    (num2.size - 1).downto(0) do |j|
      mul = num1[i].to_i * num2[j].to_i
      p1, p2 = i + j, i + j + 1
      sum = mul + product[p2]

      product[p1] += sum / 10
      product[p2] = sum % 10
    end
  end
  
  product.join('').sub(/^0+(?!$)/, '')
end
p multiply(num1, num2)