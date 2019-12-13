# Write a method, multi_dimensional_sum(array), that accepts a multidimensional array as an arg 
# and returns the sum of all numbers in the array.

def multi_dimensional_sum(arr)
    return arr.flatten.sum
end

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

p multi_dimensional_sum(arr_1)    # => 19

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

p multi_dimensional_sum(arr_2)    # => 24


# Teacher's solution
# Step 1 
def multi_dimensional_sum(array)
    array.flatten
end

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

p multi_dimensional_sum(arr_1)    # => 19

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

p multi_dimensional_sum(arr_2)    # => 24

# [4, 3, 1, 8, 1, 2]
# [3, 6, 7, 5, 2, 1]


# Step 2
def multi_dimensional_sum(array)
    array.flatten.sum
end

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

p multi_dimensional_sum(arr_1)    # => 19

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

p multi_dimensional_sum(arr_2)    # => 24

# [4, 3, 1, 8, 1, 2]
# [3, 6, 7, 5, 2, 1]


##### sum ##### 
# Return the total sum of all elements
puts [1,-1,5].sum  
# 5