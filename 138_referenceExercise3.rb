# Write a method, my_rotate!(array, amt), that accepts an array and a number as args.
# The method should mutate the array by rotating the elements 'amt' number of times. 
# When given a positive 'amt', a single rotation will rotate left, causing the first element to move to the last index
# When given a negative 'amt', a single rotation will rotate right, causing the last element to move to the first index
# The method should return the given array.
# Do not use the built-in Array#rotate
# 
# Note: this method must MUTATE the input array. This means that the object_id of the input array should be identical
# to the object_id of the returned array. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.


# PRACTICE 1 (positive 2)
array_1 = ["a", "b", "c", "d"]
p array_1.object_id
# ["a", "b", "c", "d"]
# 70358380733560

array_1 = array_1[2..3] + array_1[0..1] 
p array_1
p array_1.object_id
# ["c", "d", "a", "b"]
# 70358380733380        #=> object_id CHANGED!!!


# PRACTICE 2 (negative -3)
array_2 = ["a", "b", "c", "d"]
p array_2 = array_2[-3..-1] 
#=> ["b", "c", "d"]
p array_2 = array_2[0..-4] 
#=>["a"]


# MY solution
def my_rotate!(array, amt)
    array2 = array
    # p array
    # p array.object_id

    array2 = array[amt..-1] + array[0...amt]


    array.each_with_index do |ele, idx|
        array[idx] = array2[idx]
    end
    # p array.object_id
    # p array2.object_id
    return array


end


# array_1 = ["a", "b", "c", "d"]
# p my_rotate!(array_1, 2)


array_1 = ["a", "b", "c", "d"]
p array_1.object_id                 # => 70354216023780
result_1 = my_rotate!(array_1, 2)
p result_1                          # => ["c", "d", "a", "b"]
p result_1.object_id                # => 70354216023780


array_2 = ["NOMAD", "SOHO", "TRIBECA"]
p array_2.object_id                 # => 70354216019660
result_2 = my_rotate!(array_2, 1)
p result_2                          # => ["SOHO", "TRIBECA", "NOMAD"]
p result_2.object_id                # => 70354216019660


array_3 = ["a", "b", "c", "d"]
p array_3.object_id                 # => 70354216016500
result_3 = my_rotate!(array_3, -3)
p result_3                          # => ["b", "c", "d", "a"]
p result_3.object_id                # => 70354216016500


# Teacher's solutoin
def my_rotate!(array, amt)
    if amt > 0
        amt.times do # 1 ## 2
            ele = array.shift # a ## b
            array << ele # [b, c, d, a] ## [c, d, a, b]
        end
    else
        (-amt).times do # 1 ## 2 ### 3
            ele = array.pop # d ## c ### b
            array.unshift(ele) # [d, a, b, c] ## [c, d, a, b] ### [b, c, d, a]
        end
    end
    array
end


array_1 = ["a", "b", "c", "d"]
p array_1.object_id                 # => 70354216023780
result_1 = my_rotate!(array_1, 2)
p result_1                          # => ["c", "d", "a", "b"]
p result_1.object_id                # => 70354216023780


array_2 = ["NOMAD", "SOHO", "TRIBECA"]
p array_2.object_id                 # => 70354216019660
result_2 = my_rotate!(array_2, 1)
p result_2                          # => ["SOHO", "TRIBECA", "NOMAD"]
p result_2.object_id                # => 70354216019660


array_3 = ["a", "b", "c", "d"]
p array_3.object_id                 # => 70354216016500
result_3 = my_rotate!(array_3, -3)
p result_3                          # => ["b", "c", "d", "a"]
p result_3.object_id                # => 70354216016500