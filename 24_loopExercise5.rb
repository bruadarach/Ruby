# Exercise 5 : Factorial
# Write a method factorial(num) 
# that takes in a number num and 
# returns the product of all numbers 
# from 1 up to and including num.

# My solution
# 1) What data type I want to return ? a number
# - input : number
# - output(returned vablue) : number 
# - need a storage(=a new variable) to store a new output/retured value : yes 
# - iteration need? : yes to call a specific number to start to a specific parameter number (to stop)
#                   : remember i = 1 while i < a specific parameter number
                    # 1. set a start number i
                    # 2. set a stop number while i < num
                    # 3. increment for iteration i += 1
# - condition : multiple all numbers 
                    # need a variable to store a newly calculated value? yes
                    # return the new variable(=return value)


# Process 1 : Making an iteration
def factorial(num)
    
    i = 1 # 1. set a start njumber 
    while i <= num # 2. set a stop number
        puts i 
        i += 1 # 3. increment for iteration
    end
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120

# Process 2 :Multiple numbers
def factorial(num)
    
    sum = 1
    i = 1 # 1. set a start njumber 
    while i <= num # 2. set a stop number
        sum *= i
        i += 1 # 3. increment for iteration
    end
    return sum
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120


# Teacher's solution
def factorial(num)
  product = 1

  i = 2 # 1 * 2 = 2, so just start from 2 and skip 1 as it doesn't matter
  while i <= num
    product *= i

    i += 1
  end

  return product
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120