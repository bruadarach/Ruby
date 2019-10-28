# Array Method & Enumerable Exercise 13 : Two D Sum
# Write a method two_d_Sum 
# that takes in a two dimensional array and 
# returns the sum of all elements in the array.

# My solution
# 1) What data type I want to return ? 
# - input : 2d-array
# - output(returned vablue) : number(sum)
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

# Step 0

nums = [1,2,3,4,5]

new = 0
nums.each do |num|
    new += num
end
puts new
# 15


# ##### WRONG TRIAL! What I learned from? ##### 
# - MY MISTAKE [[1,2],3,4,5,5] (x) -> [1,2],[3],[4],[5],[5]] (o)
# otherwise, nil error comes up => `+': Array can't be coerced into Fixnum (TypeError)

# nums = [[1,2],3,4,5,5]

# new = 0
# nums.each do |num|
#     new += num
# end
# puts new
# `+': Array can't be coerced into Fixnum (TypeError)


nums = "12345"

new = 0
nums.each_char do |num|
    new += num.to_i
end
puts new
# 15


# 2-Dimensional Arrays

arr = [
    ["a", "b", "c"],
    ["d", "e"],
    ["f", "g", "h"],
]

arr.each do |subArr|
    print subArr
    puts
    subArr.each do |ele|    
        print ele
    end
    puts
end
# ["a", "b", "c"]
# abc
# ["d", "e"]
# de
# ["f", "g", "h"]
# fgh


array_1 = [
  [4, 5],
  [1, 3, 7, 1],
  [2]
]


i = 0
sum=0
while i < array_1.length
    array_1[i].each do |num|
        print num
        puts "--"
    end
    i += 1

end
# 4--
# 5--
# 1--
# 3--
# 7--
# 1--
# 2--


# My final solution
def two_d_sum(arr)
    i = 0
    sum=0
    while i < arr.length
        arr[i].each do |num|
        sum += num
        end

        i += 1
    end
    return sum

end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 1


# Teacher's solution
def two_d_sum(arr)
total = 0

arr.each do |sub_array|
    sub_array.each do |num|
    total += num
    end
end

return total
end

array_1 = [
[4, 5],
[1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
[3, 3],
[2],
[2, 5]
]
puts two_d_sum(array_2)    # => 15


# Explanation
def sum_arr(array)
    sum = 0

    array.each do |subArray|
        subArray.each do |num|
            sum += num
        end 
    end 

    return sum 
end 

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 1