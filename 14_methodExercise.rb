# Practice Problem 1 - [Average of Three]
# Analyze the examples to ensure you understand how the method should behave.
# Think about (1) what type of data the method is taking in as parameters and (2) what type it should return.


def average_of_three(num1, num2, num3)
    sum = num1 + num2 + num3
    avg = sum / 3.0
    return avg
end

puts average_of_three(3, 7, 8) # 6.0
puts average_of_three(2, 5, 17) # 8.0
puts average_of_three(2,8, 1) # 3.666666

puts average_of_three(2,8, 1) + 3 # 6.666666

# If you just return "potato"?
def average_of_three2(num1, num2, num3)
    return "potato"
end

puts average_of_three2(3, 7, 8) # potato
puts average_of_three2(2, 5, 17) # potato
puts average_of_three2(2,8, 1) # potato

# Practice Problem 2  - [Goodbye_cast]
def goodbye(name)
    say = "Bye " + name + ". "
    return say
end
  
  puts goodbye("Daniel")   # => "Bye Daniel."
  puts goodbye("Mark")     # => "Bye Mark."
  puts goodbye("Beyonce")  # => "Bye Beyonce."

  puts goodbye("Daniel") + "HI" # "Bye Daniel. Hi"

