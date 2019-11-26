# Overall Exercise 15 : Pyramid Sum
# Write a method pyramid_sum 
# that takes in an array of numbers representing the base of a pyramid. 
# The function should return a 2D array 
# representing a complete pyramid with the given base. 
# To construct a level of the pyramid, 
# we take the sum of adjacent elements of the level below.

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

# input type : numbers / an array
# output(to return) type : numbers (adjacent sums) / new 2d array

# My solution
# Step 1
def pyramid_sum(base)

    new = [base]
    sub = []

    while 1 < base.length
        base.each_with_index do |num, idx|

            if idx < base.length-1
                sub << base[idx] + base[idx+1]
            end 
        end
        new << sub
        base = new[-1]
        sub=[]
    end 
    return new.reverse

end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts


new = []
new << [1,1]
new << [2,2]
print new
# [[1, 1], [2, 2]]


# Teacher's solution
def pyramid_sum(base)
    pyramid = [base]
  
    while pyramid.length < base.length
      prev_level = pyramid[0]
      next_level = adjacent_sum(prev_level)
      pyramid.unshift(next_level)
    end
  
    return pyramid
end
  
def adjacent_sum(arr)
    new_arr = []
  
    arr.each_with_index do |ele, i|
      if i != arr.length - 1
        new_arr << arr[i] + arr[i + 1]
      end
    end
  
    return new_arr
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts


# Explanation 
# Step 1
def pyramid_sum(base)

end 

def adjacent_sum(arr)

    new_arr = []

    arr.each_with_index do |ele, i|
        if i < arr.length - 1 
            new_ele = arr[i] + arr[i + 1]
            new_arr << new_ele
        end
    end 
    return new_arr
end 

print adjacent_sum([1, 4, 6]) 
puts

print adjacent_sum([5, 10])  
puts

# [5, 10]
# [15]


# Step 2
def pyramid_sum(base)
    pyramid = [base] # pyramid.length #=> 1

    while pyramid.length < base.length # base.length #=> 3
        prev_level = pyramid[0]
        next_level = adjacent_sum(prev_level) # def adjacent_sum(pyramid[0]) => [1, 4, 6] # [[1, 5]]
        pyramid.unshift(next_level)
        # array.unshift adds an element to the front of an array, evaluates to the array
    end 
    return pyramid
end 

def adjacent_sum(arr)

    new_arr = []

    arr.each_with_index do |ele, i|
        if i < arr.length - 1 
            new_ele = arr[i] + arr[i + 1]
            new_arr << new_ele
        end
    end 
    return new_arr
end 

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts


# Practice
base = [1, 4, 6]
puts base.length # 3

base = [[1,2]]
puts base.length # 1


# Practice

def pyramid_sum(base)

    pyramid = [base]

    while pyramid.length < base.length
        pre_level = pyramid[0]
        next_level = adjacent_sum(pre_level)
        pyramid.unshift(next_level)
    end 
    return pyramid
end 

def adjacent_sum(arr)

    new_arr = []

    arr.each_with_index do |ele, i|
        if i < arr.length - 1
            new_ele = arr[i] + arr[i+1]
            new_arr << new_ele
        end 
    end 
    return new_arr
end

# print adjacent_sum([1, 4, 6]) 
# puts

# print adjacent_sum([5, 10])  
# puts

# [5, 10]
# [15]

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts

    