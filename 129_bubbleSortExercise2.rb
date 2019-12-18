# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)

# My solution
def is_sorted(arr)

    (0...arr.length-1).each do |i|
        if arr[i] > arr[i+1]
            return false
        end        
    end
    return true
end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false


# Teacher's solution - built-in method '.sort'
def is_sorted(arr)
    arr == arr.sort 
end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false


# Teacher's solution without using the built-in method
def is_sorted(arr)
    (0...arr.length-1).each do |i|
        return false if arr[i] > arr[i+1]        
    end 
    return true
end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
