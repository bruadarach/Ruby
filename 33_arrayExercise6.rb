# Exercise 6 : Odd Range
# Write a method odd_range(min, max) 
# that takes in two numbers min and max. 
# The method should return an array 
# containing all odd numbers from min to max (inclusive).

# My solution
# 1) What data type I want to return ? 
# - input : numbers
# - output(returned vablue) : numbers in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return
# Process 2 : iteration
# Process 2 : conditionals/methods


# My solution
def odd_range(min, max)
    new_arr = []

    i = min # starting point
    while i <= max # finishing point
        if i % 2 == 1
            new_arr << i
        end
        i += 1
    end
    return new_arr

end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]


# Teacher's solution
def odd_range(min, max)
    odds = []
  
    i = min
    while i <= max
      if i % 2 != 0
        odds << i
      end
  
      i += 1
    end
  
    return odds
  end
  
  print odd_range(11, 18) # => [11, 13, 15, 17]
  puts
  print odd_range(3, 7)   # => [3, 5, 7]