# Exercise 10 : Select Odds
# Write a method select_odds(numbers) 
# that takes in an array of numbers and 
# returns a new array 
# containing the odd numbers of the original array.

# My solution
# 1) What data type I want to return ? 
# - input : nums in array
# - output(returned vablue) : nums in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - positive <= num divided
# Process 3 : conditionals/methods <<

# My solution 
def select_odds(numbers)
    new_arr = []

    i = 0
    while i < numbers.length
        if numbers[i] % 2 == 1
            new_arr << numbers[i]
        else 
        end

        i += 1
    end

    return new_arr
    
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

# Teacher's solution
def select_odds(numbers)
    odds = []
  
    i = 0
    while i < numbers.length
      num = numbers[i]
      if num % 2 == 1
        odds << num
      end
  
      i += 1
    end
  
    return odds
  end
  
  print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
  puts
  print select_odds([2, 4, 6])            # => []