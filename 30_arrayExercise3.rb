# # Exercise 3 : Element Times Index
# Write a method element_times_index(nums) 
# that takes in an array of numbers and 
# returns a new array containing every number of the original array multiplied with its index.

# My solution
# 1) What data type I want to return ? 
# - input : numbers in array
# - output(returned vablue) : numbers in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes, each string
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
def element_times_index(numbers)
    
    new_arr = []

    i = 0 
    while i < numbers.length
        new_num = numbers[i] * i
        new_arr << new_num
        i += 1
    end

    return  new_arr
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]


# Teacher's solution
def element_times_index(numbers)
    new_nums = []
  
    i = 0
    while i < numbers.length
      new_nums << numbers[i] * i
  
      i += 1
    end
  
    return new_nums
  end
  
  print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
  puts
  print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]