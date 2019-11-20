# Overall Exercise 8 : Triple Sequence
# Write a method triple_sequence 
# that takes in two numbers, start and length. 
# The method should return an array 
# representing a sequence that begins with start and is length elements long. 
# In the sequence, every element should be 3 times the previous element. 
# Assume that the length is at least 1.


# input type : 2 numbers (start, length)
# output(to return) type : number / a new array

# My solution
# Step 1
def triple_sequence(start, length)

    new_arr = []
    new_arr << start
    start = start * 3
    new_arr << start 
    start = start * 3
    new_arr << start 
    start = start * 3 
    new_arr << start 

    return new_arr

end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
# print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
# puts

# [2, 6, 18, 54]


# Step 2
def triple_sequence(start, length)

    new_arr = []
    new_arr << start
    (1..length-1).each do |num|
        start *= 3
        new_arr << start
    end
    return new_arr

end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts


# My solution upate based on teacher's solution
def triple_sequence(start, length)

    new_arr = [start]
    #new_arr << start
    (1..length-1).each do |num|
        start *= 3
        new_arr << start
    end
    return new_arr

end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts


# Teacher's solution
def triple_sequence(start, length)
    seq = [start]
  
    while seq.length < length
      seq << seq[-1] * 3
    end
  
    return seq
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts


# Explanation
def triple_sequence(start, length)
    seq = [start] # [2] # [2,6,18,54]

    while seq.length < length #
        seq << seq[-1] * 3 # 2*3=6  
    end  
    return seq

end 

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts


arr = [2, 6, 18, 54]
puts arr.length # 4

i = 0
while i < arr.length
    puts i 
    i += 1 
end 
# 0
# 1
# 2
# 3

arr = [2, 6, 18, 54]
seq = [2]
puts seq.length # 1

#i = 0
while seq.length < arr.length
    seq << seq[-1] * 3 
end 
