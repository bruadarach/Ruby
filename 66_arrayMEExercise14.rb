# Array Method & Enumerable Exercise 14 : Two D Translate
# Write a method two_d_translate 
# that takes in a 2 dimensional array and 
# translates it into a 1 dimensional array. 
# You can assume that the inner arrays always have 2 elements. 
# See the examples.

# My solution
# 1) What data type I want to return ? 
# - input : 2d-array
# - output(returned vablue) : 1d-array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteratio n need? : yes
# - How to return a correct form/type?
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - if valid name or not 


# My solution 

# Step 1 : Split into an array 
# Step 2 : Make an iteration
# step 3 : Write necessary method/condition
# Step 4 : Store new data 
# Step 5 : Make a correct (return) form/type (array -> array)


# My solution

# Step 1 : Make an interation
def two_d_translate(arr)

    arr.each do |subArr|
        subArr.each do |ele1|
            puts ele1
        
        end 
    end

end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
# boot
# 3
# camp
# 2
# program
# 0
# [["boot", 3], ["camp", 2], ["program", 0]]
# red
# 1
# blue
# 4
# [["red", 1], ["blue", 4]]


# Step 2 
def two_d_translate(arr)

    new=[]
    arr.each do |subArr|
        if subArr[1] != 0
            #new <<  subArr[0] * subArr[1]
            subArr[1].times { new << subArr[0]}


        # subArr.each do |ele|
        #     puts "---"
        #     puts ele[0]
        #     puts ele[1]
        end
    end
    return new
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts

puts "string" * 2
# stringstring


# My final solution updated based on teacher's solution
def two_d_translate(arr)

    new=[]
    arr.each do |subArr|
        subArr[1].times { new << subArr[0]}

    end
    return new
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts


# Teacher's solution
def two_d_translate(arr)
new_arr = []

arr.each do |subArray|
    ele = subArray[0]
    num = subArray[1]

    num.times { new_arr << ele }
end

return new_arr
end

arr_1 = [
['boot', 3],
['camp', 2],
['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
['red', 1],
['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts


# Explanation
def two_d_translate(arr)
    new_arr = []

    arr.each do |subArray|
        ele = subArray[0]
        num = subArray[1]

        num.times { new_arr << ele }
    end 

    return new_arr
end 