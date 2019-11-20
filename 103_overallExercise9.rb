# Overall Exercise 9 : Summation Sequence
# A number's summation is the sum of all positive numbers less than or equal to the number. 
# For example: the summation of 3 is 6 because 1 + 2 + 3 = 6, 
# the summation of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21.

# Write a method summation_sequence that takes in a two numbers: start and length. 
# The method should return an array containing length total elements. 
# The first number of the sequence should be the start number. 
# At any point, to generate the next element of the sequence we take the summation of the previous element. 
# You can assume that length is not zero.


# input type : 2 numbers (start, length)
# output(to return) type : number / a new array

# My solution
# Step 1

def summation_sequence(start, length)

    total = [start]
    (1..length-1).each do |i|
        total << summation(start)
        start = summation(start)
    end 

    #summation(start).each do
    return total

end

def summation(num)
    
    sum = 0
    (1..num).each do |ele|
        sum += ele # sum = sum + ele
    end 
    return sum

end 

# puts summation(3) #=> 6
# puts summation(6) #=> 21


print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]


# Teacher's solution
def summation(n)
    sum = 0
  
    (1..n).each do |i|
      sum += i
    end
  
    return sum
end
  
def summation_sequence(start, length)
    seq = [start]
  
    while seq.length < length
      prev = seq[-1]
      seq << summation(prev)
    end
  
    return seq
end


print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]


# Explanation
def summation(n)
    sum = 0
    (1..n).each { |num| sum+= num }
    return sum
end 

puts summation(3) #=> 6
puts summation(6) #=> 21

def summation_sequence(start, length)
    seq = [start]

    while seq.length < length
        last_ele = seq[-1]
        next_ele = summation(last_ele)
        seq << next_ele 
    end 
    return seq
end 

print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]


# Pracrice

def summation(n)

    sum = 0
    (1..n).each { |num| sum += num}
    return sum
end 

puts summation(3) #=> 6
puts summation(6) #=> 21

def summation_sequence(start, length)

    seq = [start]

    while seq.length < length
        last_ele = seq[-1]
        next_ele = summation(last_ele)
        seq << next_ele
    end 
    return seq

end 
print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]