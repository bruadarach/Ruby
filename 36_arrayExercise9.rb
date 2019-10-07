# Exercise 9 : Factors Of
# Write a method factors_of(num) 
# that takes in a num and 
# returns an array of all positive numbers 
# less than or equal to num that can divide num.

# My solution
# 1) What data type I want to return ? 
# - input : a num
# - output(returned vablue) : nums in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - positive <= num divided
# Process 3 : conditionals/methods <<

# My solution 1
def factors_of(num)
    new_arr = []

    i = 1
    while i <= num
        if num % i == 0
            new_arr << i
        else 
        end 
        i += 1
    end
    return new_arr
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]


# Teacher's solution
def factors_of(num)
    factors = []
  
    i = 1
    while i <= num
      # if num is divided by i
      if num % i == 0
        factors << i
      end
  
      i += 1
    end
  
    return factors
  end
  
  print factors_of(3)   # => [1, 3]
  puts
  print factors_of(4)   # => [1, 2, 4]
  puts
  print factors_of(8)   # => [1, 2, 4, 8]
  puts
  print factors_of(9)   # => [1, 3, 9]
  puts
  print factors_of(16)  # => [1, 2, 4, 8, 16]


