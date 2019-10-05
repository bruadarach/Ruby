# Exercise 4 : Sum Nums
# Write a method sum_nums(max) 
# that takes in a number max and 
# returns the sum of all numbers from 1 up to and including max.

# Teacher's note
# numbers? one specific number to another = need iteration = while
# return number will be a newly calculated number? 
# - if yes, the returned number is a new "variable"
# - it means, you need to create a variable to store a new returned value
# sum? total += number
# sum initially starts from 0 / so, initializesum to  0 before a while loop / sum = 0

# My solution
# 1) What data type I want to return ? a number
# - input : number
# - output(returned vablue) : number 
# - need a storage(=a new variable) to store a new output/retured value : yes 
# - iteration need? : yes to call nubmers from 1 to a specific parameter number
# - condition : sum all numbers 

    # 1) number iteration => while
    # 2) each number sums up => total += i
    
def sum_nums(max)
  
    total = 0
    i = 1
    while i <= max 
      total += i
      i = i+1
    end
    return total
end
  
puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15


# Teacher's solution
def sum_nums(max)
  sum = 0

  i = 1
  while i <= max
    sum += i

    i += 1
  end

  return sum
end

puts sum_nums(4) # => 10
puts sum_nums(5) # => 15


# Process 1. Make an iteration
def sum_nums(max)
    i = 1
    while i <= max
    puts i
    i += 1
    end
end

sum_nums(4)
# 1
# 2
# 3
# 4

# Process 2. Sum numbers
def sum_nums(max)
    sum = 0
    i = 1

    while i <= max
    sum += i 
    i += 1
    end
    return sum
end

puts sum_nums(4)
# 10