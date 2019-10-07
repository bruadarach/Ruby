# Exercise 7 : Reverse Range
# Write a method reverse_range(min, max) 
# that takes in two numbers min and max. 
# The function should return an array 
# containing all numbers from min to max in reverse order. 
# The min and max should be excluded from the array

# My solution
# 1) What data type I want to return ? 
# - input : numbers
# - output(returned vablue) : numbers in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return
# Process 2 : iteration
# Process 2 : conditionals/methods - reverse, exclude

def reverse_range(min, max)
    new_arr = []

    i = max-1
    while i >= min+1 # i > min
        # reverse
        # exclude
        new_arr << i
        i -= 1
    end

    return new_arr

end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]


# Teacher's solution
def reverse_range(min, max)
    nums = []
  
    i = max - 1
    while i > min
      nums << i
  
      i -= 1
    end
  
    return nums
  end
  
  print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
  puts
  print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]