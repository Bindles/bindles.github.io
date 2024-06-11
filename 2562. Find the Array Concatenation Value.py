# PYTHON
#* 2562. Find the Array Concatenation Value
nums = [7,52,2,4]
#*
def findArrayConcVal(nums):
  res=[]
  while len(nums) > 0:
    res.append(int(str(nums.pop(0)) + str(nums.pop())))

  return sum(res)

print(findArrayConcVal(nums))

#* MISC
arr = [1,2,3]
arr.pop(0)
print(arr)


#* WORKING. . .
def findArrayConcVal(nums):
  res=[]
  while len(nums) > 0:
    #res.append([nums.pop(0), nums.pop()])
    res.append(int(str(nums.pop(0)) + str(nums.pop())))

  return sum(res)
nums = [7,52,2,4]
print(findArrayConcVal(nums))

