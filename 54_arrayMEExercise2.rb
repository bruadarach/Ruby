# Array Method & Enumerable Exercise 2 : First In Array
# Write a method first_in_array 
# that takes in an array and two elements, 
# the method should return the element that appears earlier in the array.

# My solution
# 1) What data type I want to return ? 
# - input : array(string), 2 elements
# - output(returned vablue) : elements(string)
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - 


# My solution
def first_in_array(arr, el1, el2)

    i = 0
    while i < arr.length
        if arr[i] == el1 || arr[i] == el2
            return arr[i]
        end
        i += 1
    end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"


# Teacher's solution

puts ["a", "b", "c", "d"].index("d") # 3
puts ["a", "b", "c", "d"].index("z") # nothing

def first_in_array(arr, el1, el2)
    if arr.index(el1) < arr.index(el2)
      return el1
    else
      return el2
    end
  end
  
  puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
  puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"