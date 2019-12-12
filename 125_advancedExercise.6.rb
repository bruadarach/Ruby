# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.
def union(ele1, ele2, *other_args)
    new = [ele1, ele2, *other_args]
    return new.flatten
end

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]


# Teacher's solution
# Step 1

def union(*arrays)
    arrays # () => []
end

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
# [["a", "b"], [1, 2, 3]]
# [["x", "y"], [true, false], [20, 21, 23]]


# Step 2
def union(*arrays)
    arrays.inject { |all_elements, arr| all_elements + arr }
end

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]


# Practice : Concatenate
p [1,2,3] + [4,5]
# [1, 2, 3, 4, 5]