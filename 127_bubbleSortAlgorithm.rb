# (CAREFUL!) THIS FILE INCLUDE AN INFINITE WHILE LOOP, SO BE CAREFUL TO RUN! 

##### Bubble Sort Algorithm #####
# : The Bubble Sort algorithm gets its name because it behaves as if the large numbers float to the top of the array like bubbles.

# Let's see one pass of bubble sort on the array [2, 8, 5, 2, 6]. On each step, the elements currently being scanned are in bold.

# 2, 8, 5, 2, 6 - ordered, so leave them alone
# 2, 8, 5, 2, 6 - not ordered, so swap
# 2, 5, 8, 2, 6 - not ordered, so swap
# 2, 5, 2, 8, 6 - not ordered, so swap
# 2, 5, 2, 6, 8 - our first pass is complete

# By the end of this pass we have correctly placed 8 by "bubbling it up" to the end of the array.


##### How to swap elements in an array?
array = ["a", "b", "c", "d"]
temp = array[0]; # temp = "a" / copy "a"
array[0] = array[1]; # "b" => position "a" [0] / #swapped
array[1] = temp; # "a" => position "b" [1] / #swapped
p array
# ["b", "a", "c", "d"]


# Another easy way to swap?
array = ["a", "b", "c", "d"]
array[0], array[1] = array[1], array[0]
p array
# ["b", "a", "c", "d"]


# swap the entire variables?
food = "burger"
clothes = "skirt"

food, clothes = clothes, food

p food #=> "skirt"
p clothes #=> "burger"


##### Bubble Sort Ruby Implementation #####
def bubble_sort(array)
    sorted = false

    while !sorted # false ## false ###### false
        sorted = true # true ## true ###### true

        (0...array.length-1).each do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                puts "!"
                sorted = false # false # false ##### false ###### true = out of the while loop
            end
        end
    end
    array
end

p bubble_sort([2,1,6,4,5,3])
# [1, 2, 3, 4, 5, 6]


# Note Explanation
def bubble_sort(array)
    sorted = false  # when this var is false, that means the array is not fully sorted yet

    while !sorted       # while the array is not sorted...
        sorted = true       # reset the sorted flag to true 

        # the each below will perform a single 'pass' of bubble sort
        (0...array.length - 1).each do |i|
            if array[i] > array[i + 1]                              # if adjacent elements are out of order...
                array[i], array[i + 1] = array[i + 1], array[i]     #   then swap their positions
                sorted = false                                      # since we just made a swap, we may need to perform
            end                                                     # an additional 'pass', so set the flag to false
        end
    end

    array
end


# Teacher's lecture
# Step 1 
def bubble_sort(arr)

    (0...arr.length-1).each do |i| # arr.length - 1 means, not to grab the last element 6, as the arr[i+1] will be nil
        p arr[i]
        p arr[i+1]
        p '--'
    end
end

arr = [2, 8, 5 ,2, 6]
bubble_sort(arr) #=> [2, 2, 5, 6, 8]
# 2
# 8
# "--"
# 8 
# 5
# "--"
# 5
# 2
# "--"
# 2
# 6
# "--"

# Step 2
def bubble_sort(arr)
    
    (0...arr.length-1).each do |i| # arr.length - 1 means, not to grab the last element 6, as the arr[i+1] will be nil
        if arr[i] > arr[i+1]
            arr[i], arr[i+1] = arr[i+1], arr[i]
        end
    end
    arr
end

arr = [2, 8, 5 ,2, 6]
p bubble_sort(arr) 
# [2, 5, 2, 6, 8]
# just move [8] ------> at the end == max num finding


# Little Practice - swap arr[0] <-> arr[1]
arr = [2, 8, 5 ,2, 6]
arr[0], arr[1] = arr[1], arr[0]
p arr
# [8, 2, 5, 2, 6]


# Step 3 : keep conducting passes until it is sortd! 
def bubble_sort(arr)
    
    sorted = false # 아직 순서 정리 안됐어 

    while !sorted # while sorted is not ture = while sorted is false 
        # 순서가 정리 됐다면, 그만 돌고 나가 # <- 이것 보다, 순서가 정리 안됐다면, 계속 돌꺼야! 이 해석이 맞는 듯..!
        # while not sorted, I will keep running the passes

        p "-I am in the while loop start line"
        sorted = true # 순서 정리 됐는지 한번 보자.

        p "-- I am before the each loop"

        (0...arr.length-1).each do |i| # if the adjacent elements are OUT OF ORDER
            p "=="
            p arr[i], arr[i+1]
            p "=="
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                p "************" 
                p arr[i], arr[i+1]
                p "************" 
                sorted = false # 순서 정리 안됐네, 한번 더 돌자.
                p "----sorted = false passed"
            end
        end
    end
    arr
end

arr = [2, 8, 5 ,2, 6]
p bubble_sort(arr) 
# [2, 2, 5, 6, 8]

sorted = false
p !sorted # true


# Self-practice
    
sorted = false 
p "first sorted"
p sorted # false

# 헷갈리지 말것 : !sorted가 의미하는 것은 !(false) = true가 아니라, sorted가 true가 아니면! 즉, sorted가 false면! 
while !sorted # sorted = false 인 동안에만 계속 돌고, true가 나오면 break
    p "sorted in a while loop"
    p sorted # false
    sorted = true
    p "sorted in a while loop after true" 
    p sorted # true
end

# ALERT!) While loop이 무한대로 감!!! 
sorted = false 
p "first sorted"
p sorted # false

while !sorted # false 인 동안에만 계속 돌고, true가 나오면 break
    p "sorted in a while loop"
    p sorted # false
    #sorted = true
    p "sorted in a while loop after true" 
    p sorted # false
end


##### PRACTICE AGAIN! #####
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
