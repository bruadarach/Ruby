# Overall Exercise 10 : Fibonacci
# The fibonacci sequence is a sequence of numbers whose first and second elements are 1. 
# To generate further elements of the sequence we take the sum of the previous two elements. 
# For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8. 
# Write a method fibonacci that takes in a number length and 
# returns the fibonacci sequence up to the given length.

# input type : 2 numbers (start, length)
# output(to return) type : number / a new array

# My solution
# Step 1
def fibonacci(length)

    seq = []
    if 0 < length 
        (1..length).each do |num|
            seq << num
        end
    end
    return seq

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]

# []
# [1]
# [1, 2, 3, 4, 5, 6]


# Step 2
def fibonacci(length)

    if length == 0
        seq = []

    elsif length == 1
        seq = [1]

    elsif 1 < length 
        seq = [1, 1]
        (1..length-2).each do |num|
            seq << seq[-2] + seq[-1]
        end
    end
    return seq

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts


# My solution update based on teacher's solution
def fibonacci(length)

    if length == 0
        seq = []

    elsif length == 1
        seq = [1]
    end

    #elsif 1 < length 
    seq = [1, 1]
    (1..length-2).each do |num|
        seq << seq[-2] + seq[-1]
    end
#end
    return seq

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts


# Teacher's solution
def fibonacci(length)
    if length == 0
      return []
    elsif length == 1
      return [1]
    end
  
    seq = [1, 1]
  
    while seq.length < length
      last = seq[-1]
      second_to_last = seq[-2]
      next_ele = last + second_to_last
      seq << next_ele
    end
  
    return seq
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts


# Explanation
def fibonacci(length)
    if length == 0
        return []
    elsif length == 1
        return [1]
    end 

    seq = [1, 1]
    while seq.length < length
        last = seq[-1]
        second_to_last = seq[-2]
        next_ele = last + second_to_last
        seq << next_ele
    end 
    return seq

end 

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts