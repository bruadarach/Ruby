# Overall Exercise 14 : Adjacent Sum
# Write a method adjacent_sum 
# that takes in an array of numbers and 
# returns a new array containing the sums of adjacent numbers in the original array. 
# See the examples.

# input type : numbers / an array
# output(to return) type : numbers (sums) / new array

# My solution
# Step 1
def adjacent_sum(arr)

    new_arr = []
    
    i = 0
    while i < arr.length-1
        new_arr << arr[i] + arr[i+1]
        i += 1
    end 
    return new_arr
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts


arr = [3, 7, 2, 11]
puts arr[0] + arr[1] #=> 10


# Teacher's solution 1
def adjacent_sum(arr)
    new_arr = []
  
    arr.each_with_index do |ele, i|
      if i != arr.length - 1
        new_arr << arr[i] + arr[i + 1]
      end
    end
  
    return new_arr
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts


# Explanation
def adjacent_sum(arr)
    sums = []

    arr.each_with_index do |ele, i|
        if i != arr.length-1 # i <  arr.length-1
            new_ele = arr[i] + arr[i+1]
            # ERROR: 58:in `+': nil can't be coerced into Fixnum (TypeError)
            # arr.length보다 +1이면 nil이므로 에러가 나! 
            sums << new_ele
        end
    end 

    return sums
end 

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts


# Teacher's solution 2
def adjacent_sum(arr)
    new_arr = []
  
    i = 0
    while i < arr.length - 1
        new_ele = arr[i] + arr[i+1]
        new_arr << new_ele
        
        i += 1
    end
  
    return new_arr
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts