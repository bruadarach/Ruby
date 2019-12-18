# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

# Step 1
def bubble_sort(arr)

    (0...arr.length-1).each do |i|
        if arr[i] > arr[i+1]
            arr[i], arr[i+1] = arr[i+1], arr[i]
        end
    end
    arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]
# [2, 5, 2, 6, 8]
# [8, 7, 1, 2, 3, 10]
# 1st round to move a max value to the end of an array, and not finish sorting for an order


# Step 2 : How to make it iterate again and again until it become in an ascending order completely?
# use 'while true' / 'while false' trick!
 def bubble_sort(arr)

    sorted = false # not yet completely sorted! 

    while !sorted # while sorted is NOT true == while sorted is false
        
        sorted = true # let's check whether the array is true!

        # Checking system running~~~
        (0...arr.length-1).each do |i|
            if arr[i] > arr[i+1] # if it is has to change an order and need to doublecheck whether it is in an order, 
                arr[i], arr[i+1] = arr[i+1], arr[i] # change an order
                sorted = false # iterate again! to double check whether the order is sorted completely again!
            end
            # if sorted = true, which means no need to change any order and finish checking, break the while loop!
        end
    end
    arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]
 

# Teacher's solution
def bubble_sort(arr)
    sorted = false

    while !sorted #=> while sorted = false
        sorted = true

        (0...arr.length-1).each do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                sorted = false
            end
        end
    end
    arr
end 
p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]
 