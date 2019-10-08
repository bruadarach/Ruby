# Exercise 12 : Sum Elements
# Write a method sum_elements(arr1, arr2) 
# that takes in two arrays. 
# The method should return a new array 
# containing the results of adding together corresponding elements of the original arrays. 
# You can assume the arrays have the same length.

# My solution
# 1) What data type I want to return ? 
# - input : two arrays
# - output(returned vablue) : a new array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - positive <= num divided
# Process 3 : conditionals/methods - sum

# My solution
### Process 0 - 1
# def sum_elements(arr1, arr2)
#     new_arr = []

#     i = 0
#     j = 0
#     while i < arr1.length
#         while j < arr2.length
#         puts arr1[i]
#         i += 1
#     end
    
#     # while j < arr2.length
#     #     puts arr2[j]
#     #     j += 1
#     # end
# end

### Process 2
# a = [1, 2, 3]
# b = [4, 5, 6]
# print a + b 
# [1, 2, 3, 4, 5, 6]

# a - 0 - 0
# a - 0 - 1
# a - 0 - 2

# b - 0 - 0
# b - 0 - 1
# b - 0 - 2

# diff - same - same
# same = word[i][i] 

# Process 3
def sum_elements(arr1, arr2)

    new_arr = []

    i = 0
    while i < arr1.length # You can assume the arrays have the same length.

        new_arr << arr1[i] + arr2[i] 

        i += 1
    end

    return new_arr
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]


# Teacher's solution
def sum_elements(arr1, arr2)
    new_elements = []
  
    i = 0
    while i < arr1.length
      new_ele = arr1[i] + arr2[i]
      new_elements << new_ele
        # el1 = arr1[i]
        # el2 = arr2[i]
        # new_el = el1 + el2
        # new_arr << new_el
  
      i += 1
    end
  
    return new_elements
  end
  
  print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
  puts
  print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]