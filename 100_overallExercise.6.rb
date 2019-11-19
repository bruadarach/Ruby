# Overall Exercise 5 : Greatest Factor Array
# Write a method greatest_factor_array 
# that takes in an array of numbers and 
# returns a new array 
# where every even number is replaced with it's greatest factor. 
# A greatest factor is the largest number that divides another with no remainder. 
# For example the greatest factor of 16 is 8. 
# (For the purpose of this problem we won't say the greatest factor of 16 is 16, 
# because that would be too easy, ha)

# input type : a number / array
# output(to return) type : even number -> greatest factor / a new array

# My solution
# Step 1
def greatest_factor_array(arr)

    #new_arr = []
    arr.each do |num|
        puts num 
    end 
    #return new_arr
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
# 16
# 7
# 9
# 14
# [16, 7, 9, 14]
# 30
# 3
# 24
# 21
# 10
# [30, 3, 24, 21, 10]


# Step 2
def greatest_factor_array(arr)

    new_arr = []
    arr.each do |num|
        if num % 2 == 0
            new_arr << greatestfactor(num)
        else  
            new_arr << num
        end 
    end 
    return new_arr
 
end

def greatestfactor(num)

    factors = [] 
    (1..num).each do |i|
        if num % i == 0
            factors << i
        end 
    end 
    return factors[-2]

end 

# puts "==="
# puts greatestfactor(10)
# puts greatestfactor(24)
# puts "==="

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts


# Teacher's solution
def greatest_factor_array(arr)
    new_arr = arr.map do |num|
      if num % 2 == 0
        greatest_factor(num)
      else
        num
      end
    end
  
    return new_arr
end
  
def greatest_factor(num)
    (1...num).reverse_each do |i|
      if num % i == 0
        return i
      end
    end
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts


# Explanation
# Step 1
def greatest_factor_array(arr)
end 

def greatest_factor(num)
    (1...num).each do |i|
        puts i
    end 
end    

greatest_factor(16) #=> 8
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 11
# 12
# 13
# 14
# 15


# Step 2 : use "reverse_each"
def greatest_factor_array(arr)
end 

def greatest_factor(num)
    (1...num).reverse_each do |i|
        puts i
    end 
end    

greatest_factor(16) #=> 8
# 15
# 14
# 13
# 12
# 11
# 10
# 9
# 8
# 7
# 6
# 5
# 4
# 3
# 2
# 1


# Step 3: Complete def greatest_factor(num) / + CHECK MY CURIOSITY! 
def greatest_factor_array(arr)
end 

puts"============================"
def greatest_factor(num)
    (1...num).reverse_each do |i| # (1...num) 이유? check the condition below!
        # For example the greatest factor of 16 is 8. 
        # (For the purpose of this problem we won't say the greatest factor of 16 is 16, 
        # because that would be too easy, ha)
        puts "==="
        puts i # 15 # 14
        puts num % i #  16 % 15 = 1  $ 16 % 14 = 2
        puts "==="
        if num % i == 0
            return i
        end 
    end 
end    

puts greatest_factor(16) #=> 8
puts greatest_factor(10) #=> 5


##### QUESTION? # WHY NOT 16, 10 // 8, 5 ??

# not start from 16, but from 15! (due to the condition below)
puts 16 % 16 #=> 0
# not start from 10, but from 9!  (due to the condition below)
puts 10 % 10 #=> 0
# For example the greatest factor of 16 is 8. 
# (For the purpose of this problem we won't say the greatest factor of 16 is 16, 
# because that would be too easy, ha)


# Step 4 : use 'map'
def greatest_factor_array(arr)
    new_arr = arr.map do |num|
        if num % 2 == 0
            greatest_factor(num)
        else   
            num
        end 
    end 
    return new_arr
end 

def greatest_factor(num)
    (1...num).reverse_each do |i| 
        if num % i == 0
            return i
        end 
    end 
end    

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts