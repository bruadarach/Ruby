# Exercise 4 : Even Nums
# Write a method even_nums(max) 
# that takes in a number max and 
# returns an array containing all even numbers from 0 to max

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
# - condition : if statement / order comparision
# Process 2 : Condition / Method
                    # a new variables? need a variable to store a newly calculated value? yes
                    # return the new variable(=return value)


# My solution
def even_nums(max)
    new_arr = []

    i = 0
    while i <= max
        if i % 2 == 0
            new_arr << i
        end
        i += 1
    end
    return new_arr

end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]


# Teacher's solution
def even_nums(max)
  evens = []

  i = 0
  while i <= max
    if i % 2 == 0
      evens << i
    end

    i += 1
  end

  return evens
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]