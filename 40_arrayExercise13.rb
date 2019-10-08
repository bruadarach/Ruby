# Exercise 13 : Fizz Buzz
# Write a method fizz_buzz(max) 
# that takes in a number max and 
# returns an array 
# containing all numbers greater than 0 and less than max 
# that are divisible by either 4 or 6, but not both.

# My solution
# 1) What data type I want to return ? 
# - input : a number (max) - limitation range
# - output(returned vablue) : array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - div by 4 or 6, not both

# My solution

def fizz_buzz(max)

    new_arr=[]

    i = 1
    while i < max
        if i % 4 == 0 && i % 6 != 0
            new_arr << i  

        elsif  i % 6 == 0 && i % 4 != 0
            new_arr << i 
        else 
        end
        i += 1
    end

    return new_arr
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]

# Teacehr's solution
def fizz_buzz(max)
    nums = []
  
    i = 0
    while (i < max)
      if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
        nums << i
      end
  
      i += 1
    end
  
    return nums
  end
  
  print fizz_buzz(20) # => [4, 6, 8, 16, 18]
  puts
  print fizz_buzz(15) # => [4, 6, 8]
