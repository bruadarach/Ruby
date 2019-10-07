# Exercise 8 : First Half
# Write a method first_half(array) 
# that takes in an array and 
# returns a new array 
# containing the first half of the elements in the array. 
# If there is an odd number of elements, 
# return the first half including the middle element.


# Important lesson:
## - iteration + half in array
### => while i < (array.length / 2.0) 


# My solution
# 1) What data type I want to return ? 
# - input : any element in array
# - output(returned vablue) : any element in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return
# Process 2 : iteration
# Process 2 : conditionals/methods - half / odd = half + middle

# My solution 1
def first_half(array)
    new_arr = []

    i = 0
    while i < array.length
        if array.length % 2 == 0 # even
            if i <= (array.length / 2) - 1 # half
                new_arr << array[i]
            else
            end
        elsif array.length % 2 == 1 # odd
            if i <= (array.length / 2) # half
                new_arr << array[i]
            else 
            end
        end
        i += 1
    end
    return new_arr
end


# My solution 2
def first_half(array)
    new_arr = []

    i = 0
    while i < array.length
        if array.length % 2 == 0 && i <= (array.length / 2) - 1
            new_arr << array[i]
            i += 1
        # elsif array.length % 2 == 0 && i > (array.length / 2 - 1)
        #   i += 1
        elsif array.length % 2 == 1 && i <= array.length / 2 
            new_arr << array[i]
            i += 1
        else
            i += 1
        end
    end
        
    return new_arr

end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"]) # => ["a", "b", "c"]


# Teacher's solution
def first_half(array)
    new_array = []
  
    i = 0
    while i < (array.length / 2.0) # 2.0
      ele = array[i]
      new_array << ele
  
      i += 1
    end
  
    return new_array
  end
  
  print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
  puts
  print first_half(["a", "b", "c", "d", "e"]) # => ["a", "b", "c"]


# Important lesson:
## - iteration + half in array
### => while i < (array.length / 2.0) ! 

# Difference between my solution and teacher's solution
# - my solution hit all elemetns, while teacher's only hit the needed/valid elements!!

# So, thing about the concept of RANGE for loop, and how not to waste iteration and save time.
# Think aobut, (1) how to stop the loop? (2) how to set a range of loop to iterate
# Then, set a condition of range in rhe 'while' line

  


