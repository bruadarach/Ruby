# Overall Exercise 16 : All Else Equal
# Write a method all_else_equal that takes in an array of numbers. 
# The method should return the element of the array that is equal to half of the sum of all elements of the array. 
# If there is no such element, the method should return nil.

# input type : numbers / an array
# output(to return) type : a number of an array (half of the sum of all element) or nil

# My solution
# Step 1
def all_else_equal(arr)

    sum = 0
    arr.each do |n|
        sum += n 
    end 
    return sum

end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array

# 20
# 6
# 10


# Step 2
def all_else_equal(arr)

    sum = 0
    arr.each do |n|
        sum += n 
    end 
    
    if arr.include?(sum/2)
        return sum/2
    else   
        return nil 
    end 

end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array

puts "======="
# My solution update based on teacher's solution
def all_else_equal(arr)

    sum = 0
    arr.each do |n|
        sum += n 
    end 
    
    if arr.include?(sum/2.0) # /2.0, not /2
        return sum/2.0
    # else   
    #     return nil 
    end 
    return nil

end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there

# Teacher's solution
def all_else_equal(arr)
    sum = sum_array(arr)
  
    arr.each do |ele|
      if ele == sum / 2.0
        return ele
      end
    end
  
    return nil
end
  
def sum_array(arr)
    sum = 0
  
    arr.each do |num|
      sum += num
    end
  
    return sum
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10
p all_else_equal([6, 3, 5, -9, 1]) #=> 3
p all_else_equal([1, 2, 3, 4])     #=> false


# Explanation
def all_else_equal(arr)

    sum = sum_array(arr)

    arr.each do |ele|
        if ele == sum/2.0  # 2.0
            return ele  
        # else  
        #     return nil 
        ##### already 2 != 10 -> directly nil returned!! so need to block this earlier return! 

        ##### This is not so great, 
        ##### ERROR: p all_else_equal([2, 4, 3, 10, 1]) #=> 10 (X) #=> Nil !!!!
        end  
    end

    return nil # put return nil here! 
end 

def sum_array(arr)
    sum = 0

    arr.each { |num| sum += num }
    return sum
end

#p sum_array([2, 4, 3, 10, 1]) # => 20

p all_else_equal([2, 4, 3, 10, 1]) #=> 10
p all_else_equal([6, 3, 5, -9, 1]) #=> 3
p all_else_equal([1, 2, 3, 4])     #=> false