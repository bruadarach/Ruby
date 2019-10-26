# Array Method & Enumerable Exercise 12 : Opposite Count
# Write a method opposite_count 
# that takes in an array of unique numbers. 
# The method should return the number of pairs of elements 
# that sum to 0.

# My solution
# 1) What data type I want to return ? 
# - input : array(number)
# - output(returned vablue) : array(numbers)
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteratio n need? : yes
# - How to return a correct form/type?
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - if valid name or not 


# My solution 

# Step 1 : Split into an array 
# Step 2 : Make an iteration
# step 3 : Write necessary method/condition
# Step 4 : Store new data 
# Step 5 : Make a correct (return) form/type (array -> array)


def opposite_count(nums)

    new = [] 

    nums.each_with_index do |num1, idx1|
        nums.each_with_index do |num2, idx2|

            if idx1 < idx2
                if num1 + num2 == 0 
                    new << [num1, num2]
                end 
            end 

        end 
    end 
    return new.length

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1


# My solution 2 
def opposite_count(nums)

    new = 0

    nums.each_with_index do |num1, idx1|
        nums.each_with_index do |num2, idx2|

            if idx1 < idx2
                if num1 + num2 == 0 
                    new += 1
                end 
            end 

        end 
    end 
    return new

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1


# my solution updated based on teacher's solution
def opposite_count(nums)

    new = 0

    nums.each_with_index do |num1, idx1|
        nums.each_with_index do |num2, idx2|

            if idx1 < idx2 && num1 + num2 == 0 
                new += 1
            end 

        end
    end 
    return new

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1


# Teacher's solution
def opposite_count(nums)
    count = 0
  
    nums.each_with_index do |num1, idx1|
      nums.each_with_index do |num2, idx2|
        if num1 + num2 == 0 && idx2 > idx1
          count += 1
        end
      end
    end
  
    return count
  end
  
  puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
  puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1


# Explanation
# Step 1 : Make an iteration
def opposite_count(nums)
    count = 0

    nums.each do |num1|
        nums.each do |num2|

            # `+': String can't be coerced into Fixnum (TypeError)
            # puts num1 + " " + num2
            # therefore, numbers cannot concatenate(+), so need to add ".to_s"
            puts num1.to_s + " " + num2.to_s
        end
    end

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1


# Step 2 : Make an iteration, using indices(.each_with_index) to avoid repeated numbers
# Otherwise, due to the repeated numbers, the outputs will be 4, 2, which are doubled by our expected results 2,1
def opposite_count(nums)
    count = 0

    nums.each do |num1|
        nums.each do |num2|

            if num1 + num2 == 0
                count += 1
            end
        end
    end
    return count

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1
# 4
# 2


# Step 2 : Make an iteration, using indices(.each_with_index) to avoid repeated numbers
def opposite_count(nums)
    count = 0

    nums.each_with_index do |num1, idx1|
        nums.each_with_index do |num2, idx2|

            if num1 + num2 == 0 && idx2 > idx1
                count += 1
            end
        end
    end
    return count

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1