# Array Method & Enumerable Exercise 7 : Array Translate
# Write a method array_translate 
# that takes in an array whose elements alternate between words and numbers. 
# The method should return a string 
# where each word is repeated the number of times 
# that immediately follows in the array.

# My solution
# 1) What data type I want to return ? 
# - input : array(string & numbers)
# - output(returned vablue) : string (string * number)
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# - How to return a correct form/type?
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - if valid name or not 


# My solution 

# Step 1 : Split into an array 
# Step 2 : Make an iteration
# Step 3 : Store new data 
# Step 4 : Make a correct form/type (Array -> String )

# Analysis : odd - string, even - number / odd * even

# Step 0 : necessary methods check
puts "cat" * 2 # catcat


# Step 1 : array split is not possible... -> .each_with_index
def array_translate(array)
    # array.split(" ")
    # puts array
    array.each_with_index do |ele1, idx1|
        puts ele1, idx1.to_s
    end
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
# Cat
# 0
# 2
# 1
# Dog
# 2
# 3
# 3
# Mouse
# 4
# 1
# 5
# ["Cat", 2, "Dog", 3, "Mouse", 1]
# red
# 0
# 3
# 1
# blue
# 2
# 1
# 3
# ["red", 3, "blue", 1]


# Step 3

def array_translate(array)
    # array.split(" ")
    # puts array
    odd = []
    even = [] 
    new=""

    array.each_with_index do |ele1, idx1|
        if idx1 % 2 == 0 
            odd << ele1
        elsif idx1 % 2 != 0
            even << ele1
        end 
    end

    odd.each_with_index do |ele1, idx1|
        even.each_with_index do |ele2, idx2|
            if idx1 == idx2
                new << ele1 * ele2
            end
        end  
    end
    return new
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
# ["Cat", "Dog", "Mouse"][2, 3, 1]
# ["red", "blue"][3, 1]


# My final solution
def array_translate(array)

    odd = []
    even = [] 
    new=""

    array.each_with_index do |ele1, idx1|
        if idx1 % 2 == 0 
            odd << ele1
        elsif idx1 % 2 != 0
            even << ele1
        end 
    end

    odd.each_with_index do |ele1, idx1|
        even.each_with_index do |ele2, idx2|
            if idx1 == idx2
                new << ele1 * ele2
            end
        end  
    end
    return new
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts


# Teacher's solution
def array_translate(array)
str = ""

i = 0
while i < array.length
    ele = array[i]
    num = array[i + 1]
    num.times { str += ele }

    i += 2
end

return str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts


# Explanation and alternative solution 
def array_translate(array)
new_str = ""

# idea : grab 1 and 2, and then 3 and 4
i = 0
while i < array.length
    ele = array[i]
    num = array[i + 1]

    #num.times {new_str += ele}
    new_str += ele * num

    i += 2 # then 3 and 4
end 

return new_str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts


# times : iterate a particular number of times
4.times { puts "hi"}
# hi
# hi
# hi
# hi

newarray = ""
num = 3
ele = "cat"

num.times {newarray += ele}
puts newarray
# catcatcat

puts "hi" * 3 
# hihihi
