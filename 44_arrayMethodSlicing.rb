# array/string slicing

# array[startIdx..endIdx] - grabs elements from startIdx to endIdx (inclusive)
# array[startIdx...endIdx] - grabs elements from startIdx to endIdx (excluding the element at endIdx)

# index
arr = ["a", "b", "c", "d", "e"]
print arr[0] # a
puts

# .. 
print arr[0..2] # ["a", "b", "c"]
puts

# ... 
print arr[0...2] # ["a", "b"]
puts

# string?
str = "bootcamp"
print str[1] # o
puts
print str[1..2] # oo
puts
print str[1...3] # oo
puts

# the very end of a string?
print str[-1] # p
puts
print str[1..-1] # ootcamp
puts

print str[1..-6] # oo
puts
print str[1...-5] # oo
puts

