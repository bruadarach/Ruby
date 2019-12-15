# Write a method, swapper(arr, idx_1, idx_2), that accepts an array and two indices as args.
# The method should swap the elements at the given indices and return the array.
# The method should modify the existing array and not create a new array.

# My solution
def swapper(arr, idx_1, idx_2)
    
    arr[idx_1], arr[idx_2] = arr[idx_2], arr[idx_1]
    arr
end 

p swapper(["a", "b", "c", "d"], 0, 2)               # => ["c", "b", "a", "d"]
p swapper(["a", "b", "c", "d"], 3, 1)               # => ["a", "d", "c", "b"]
p swapper(["canal", "broadway", "madison"], 1, 0)   # => ["broadway", "canal", "madison"]


# Teacher's solution

# Step 1 : (including a wrong solution)
def swapper(arr, idx_1, idx_2)
    arr[idx_1] = arr[idx_2] # as soon as I execute this line, it will be ["c", "b", "c", "d"]
    arr[idx_2] = arr[idx_1] # then, I excute this line, then it will be ["c", "b", "c", "d"], which is wrong!
    arr

end
p swapper(["a", "b", "c", "d"], 0, 2)               # => ["c", "b", "a", "d"]
# p swapper(["a", "b", "c", "d"], 3, 1)               # => ["a", "d", "c", "b"]
# p swapper(["canal", "broadway", "madison"], 1, 0)   # => ["broadway", "canal", "madison"]


# Step 2
def swapper(arr, idx_1, idx_2)
    temp = arr[idx_1]
    arr[idx_1] = arr[idx_2] # as soon as I execute this line, it will be ["c", "b", "c", "d"]
    arr[idx_2] = temp # then, I excute this line, then it will be ["c", "b", "c", "d"], which is wrong!
    arr

end
p swapper(["a", "b", "c", "d"], 0, 2)               # => ["c", "b", "a", "d"]
p swapper(["a", "b", "c", "d"], 3, 1)               # => ["a", "d", "c", "b"]
p swapper(["canal", "broadway", "madison"], 1, 0)   # => ["broadway", "canal", "madison"]


# Step 3 : Make it shorter !
def swapper(arr, idx_1, idx_2)
    
    arr[idx_1], arr[idx_2] = arr[idx_2], arr[idx_1]
    arr
end

p swapper(["a", "b", "c", "d"], 0, 2)               # => ["c", "b", "a", "d"]
p swapper(["a", "b", "c", "d"], 3, 1)               # => ["a", "d", "c", "b"]
p swapper(["canal", "broadway", "madison"], 1, 0)   # => ["broadway", "canal", "madison"]
