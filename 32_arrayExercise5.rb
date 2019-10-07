# Exercise 5 : Range
# Write a method range(min, max) 
# that takes in two numbers min and max. 
# The function should return an array 
# containing all numbers from min to max inclusive.

# My solution
# 1) What data type I want to return ? 
# - input : numbers in array
# - output(returned vablue) : numbers in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
#                   : remember i = 0 while i < word.length
#                   : IMPORTANT! word[0] =/ word[word.length] | word.length - 1
# Process 0 : what to return? create a new variable and return a new variable
# Process 1 : Making an iteration
                    # 1. set a start position 0 | i = 0
                    # 2. set a stop number | while i < word.length
                    # 3. check each character | word[i]
                    # 4. increment for iteration i += 1
# - condition : if statement / add up
# Process 2 : Condition / Method
                    # a new variables? need a variable to store a newly calculated value? yes
                    # return the new variable(=return value)


# My solution
def range(min, max)
    new_arr = []

    i = min
    while i <= max
        new_arr << i
        i = i + 1    
    end

    return new_arr
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]


# Teacher's solution
def range(min, max)
    nums = []
  
    i = min
    while i <= max
      nums << i
  
      i += 1
    end
  
    return nums
  end
  
  print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
  puts
  print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]


# Extra thought - position of new_arr = []
def range(min, max)
    #new_arr = []

    i = min
    while i <= max
        new_arr = [] # initialized
        new_arr << i
        i = i + 1    
    end

    return new_arr
end

print range(2, 7)   # => [7]
