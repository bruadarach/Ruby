# Overall Exercise 7 : Perfect Square (완전 제곱)
# Write a method perfect_square? 
# that takes in a number and 
# returns a boolean indicating whether it is a perfect square. 

# A perfect square is a number that results from multiplying a number by itself. 
# For example, 9 is a perfect square because 3  3 = 9, 
# 25 is a perfect square because 5  5 = 25.


# input type : a number 
# output(to return) type : boolean (if a perfect square or not)

# My solution
# Step 1 : (idea1 - 약수 구하고, 나누기 해볼까?)
def perfect_square?(num)

    # factor = (1..num).select { |ele| if num % ele == 0 }
    #     puts factor
    factor = []
    (1..num).each do |ele|
        if num % ele == 0
            factor << ele
        end  
    end 
    print factor

end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true

# [1, 5]
# [1, 2, 3, 4, 6, 12]
# [1, 2, 3, 5, 6, 10, 15, 30]
# [1, 3, 9]
# [1, 5, 25]


# Step 2 : (idea1 - 약수 구하고, 나누기 해볼까?)
def perfect_square?(num)

    factor = []
    (1..num).each do |ele1|
        if num % ele1 == 0
            factor << ele1
        end  
    end 
    
    square = []
    factor.each do |ele2|
        if ele2 * ele2 == factor[-1]
            return true
        end 
    end 
    return false

end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true


# Step 3 : make it shorter
def perfect_square?(num)

    (1..num).each do |ele1|
        if num % ele1 == 0 && ele1 * ele1 == num
            return true 
        end 
    end 
    return false

end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true


# Teacher's solution
def perfect_square?(num)
    (1..num).each do |factor|
      if factor * factor == num
        return true
      end
    end
  
    return false # Check the position of 'false'!
end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true
  

# Explanation
def perfect_square?(num)
    
    (1..num).each do |factor|
        if factor * factor == num
            return true 
        end 
    end 
    return false
end 

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true