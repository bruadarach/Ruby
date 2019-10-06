# Exercise 1 : Doubler
# Write a method doubler(numbers) that takes an array of numbers and 
# returns a new array
# where every element of the original array is multiplied by 2.

# My solution
# 1) What data type I want to return ? 
# - input : number
# - output(returned vablue) : number
# - need a storage(=a new variable) to store a new output/retured value : no?
# - iteration need? : yes, each number
#                   : remember i = 0 while i < word.length
#                   : IMPORTANT! word[0] =/ word[word.length] | word.length - 1
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
def doubler(numbers)

    new_arr = []
    i = 0
    while i < numbers.length
        new_num = numbers[i] * 2
        new_arr << new_num # or just numbers[i] * 2
        i += 1
    end
    return new_arr
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]


# Teacher's solution
def doubler(numbers)
    doubled_nums = []
  
    i = 0
    while i < numbers.length
      old_num = numbers[i]
      new_num = old_num * 2
      doubled_nums << new_num
  
      i += 1
    end
  
    return doubled_nums
  end
  
  print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
  puts
  print doubler([7, 1, 8])    # => [14, 2, 16]