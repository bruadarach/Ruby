# Write a method, scalar_multiple!(array, multiplier), that accepts an array and a number as args. 
# The method should mutate the given array by multiplying all of the elements by the multiplier.
# The method should return the given array.
# 
# Note: this method must MUTATE the input array. This means that the object_id of the input array should be identical
# to the object_id of the returned array. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.


# My solution
# Step 1
def scalar_multiple!(array, multiplier)
    # p array
    # p array.object_id

    array2 = array
    # p array2.object_id
 
    i = 0
    while i < array.length
        array2[i] = array[i] * multiplier
        i += 1
    end
    
    return array2
    # p array.object_id
    # p array2.object_id

end

# array_1 = [7, 0, 4]
# p scalar_multiple!(array_1, 3)

# array_2 = [90, 30, 4, 12]
# p result_2 = scalar_multiple!(array_2, 0.5)

array_1 = [7, 0, 4]
p array_1.object_id                             # => 70326264380840
result_1 = scalar_multiple!(array_1, 3)
p result_1                                      # => [21, 0, 12]
p result_1.object_id                            # => 70326264380840


array_2 = [90, 30, 4, 12]
p array_2.object_id                             # => 70326264378100
result_2 = scalar_multiple!(array_2, 0.5)
p result_2                                      # => [45.0, 15.0, 2.0, 6.0]
p result_2.object_id                            # => 70326264378100


# Step 2
def scalar_multiple!(array, multiplier)
    # p array
    # p array.object_id

    #array2 = array
    # p array2.object_id
 
    i = 0
    while i < array.length
        array[i] * multiplier
        i += 1
    end
    
    return array
    # p array.object_id
    # p array2.object_id

end


array_1 = [7, 0, 4]
p array_1.object_id                             # => 70326264380840
result_1 = scalar_multiple!(array_1, 3)
p result_1                                      # => [21, 0, 12]
p result_1.object_id                            # => 70326264380840


array_2 = [90, 30, 4, 12]
p array_2.object_id                             # => 70326264378100
result_2 = scalar_multiple!(array_2, 0.5)
p result_2                                      # => [45.0, 15.0, 2.0, 6.0]
p result_2.object_id                            # => 70326264378100


# Teacher's solution

# Step 1 - prob : object_id is changed and different!
def scalar_multiple!(array, multiplier)
    array.map { |el| el * multiplier } # object_id is different!
end

# step 2 - map! : original array + modifying
def scalar_multiple!(array, multiplier)
    array.map! { |el| el * multiplier } # object_id is different!
end

array_1 = [7, 0, 4]
p array_1.object_id                             # => 70326264380840
result_1 = scalar_multiple!(array_1, 3)
p result_1                                      # => [21, 0, 12]
p result_1.object_id                            # => 70326264380840


array_2 = [90, 30, 4, 12]
p array_2.object_id                             # => 70326264378100
result_2 = scalar_multiple!(array_2, 0.5)
p result_2                                      # => [45.0, 15.0, 2.0, 6.0]
p result_2.object_id                            # => 70326264378100
