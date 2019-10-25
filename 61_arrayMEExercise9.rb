# Array Method & Enumerable Exercise 9 : Rotate Array
# Write a method rotate_array 
# that takes in an array and a number. 
# The method should return the array 
# after rotating the elements, the specified number of times. 
# A single rotation takes the last element of the array and moves it to the front.

# My solution
# 1) What data type I want to return ? 
# - input : array & number
# - output(returned vablue) : array
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
# Step 4 : Make a correct form/type (String -> String)

def rotate_array(arr, num)

    if num == 1
        arr.unshift(arr[-1])
        arr.pop
    end

    if num > 1

        i = 0
        while i < arr.length - num
            arr.push(arr[0])
            arr.shift
            i += 1 
        end 
    end

    return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts


# Teacher's solution
def rotate_array(arr, num)
num.times do
    ele = arr.pop
    arr.unshift(ele)
end

return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts


# Explanation
def rotate_array(arr, num)
    num.times do 
        ele = arr.pop
        arr.unshift(ele)
    end 
    return arr
end 

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts


# 내 코드가 긴 이유? Why my code is so long? 
# - 선생님은 number만큼 "뒤에 있는 것을 앞으로" 가져오면 된다! 라는 생각으로 한 것이고
# - 나는, number만큼 "앞에 있는 것을 뒤로" 보내야한다는 생각으로 코드를 짜서 그런 것임..

# .times review
# times : iterate a particular number of times
4.times { puts "hi"}
# hi
# hi
# hi
# hi

4.times do 
    puts "hi"
end
# hi
# hi
# hi
# hi

5.times {|i| print i, " " }   #=> 0 1 2 3 4

5.times do |i|
    print i, " "
end
# 0 1 2 3 4