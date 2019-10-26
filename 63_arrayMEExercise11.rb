# Array Method & Enumerable Exercise 11 : Combinations
# Write a method combinations 
# that takes in an array of unique elements, 
# the method should return a 2D array 
# representing all possible combinations of 2 elements of the array.


# My solution
# 1) What data type I want to return ? 
# - input : array(element - string & number)
# - output(returned vablue) : 2D array (combination of 2 elements)
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# - How to return a correct form/type?
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - if valid name or not 


# My solution 

# Step 1 : Split into an array 
# Step 2 : Make an iteration
# Step 3 : Store new data 
# Step 4 : Make a correct form/type (array -> 2D array)

# Step 0 : need to make an iteration, using idx as well
def combinations(arr)

    arr.each_with_index do |ele, idx|
        puts ele
        puts idx
    end

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
# a
# 0
# b
# 1
# c
# 2
# ["a", "b", "c"]
# 0
# 0
# 1
# 1
# 2
# 2
# 3
# 3
# [0, 1, 2, 3]

# Step 1 : nested loops
def combinations(arr)

    arr.each_with_index do |ele1, idx|
        arr.each_with_index do |ele2, idx2|
            puts ele1 + ele2
        end
    end

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
# aa
# ab
# ac
# ba
# bb
# bc
# ca
# cb
# cc
# ["a", "b", "c"]
# 0
# 1
# 2
# 3
# 1
# 2
# 3
# 4
# 2
# 3
# 4
# 5
# 3
# 4
# 5
# 6
# [0, 1, 2, 3]

# Step 2 : nested loops
def combinations(arr)

    new = []
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if ele1 < ele2
                puts ele1 + ele2
                puts idx1.to_s + " " + idx2.to_s
                puts "----"

                # new[idx] << ele1
            end
        end
    end

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
# ab
# 0 1
# ----
# ac
# 0 2
# ----
# bc
# 1 2
# ----
# ["a", "b", "c"]
# 1
# 0 1
# ----
# 2
# 0 2
# ----
# 3
# 0 3
# ----
# 3
# 1 2
# ----
# 4
# 1 3
# ----
# 5
# 2 3
# ----
# [0, 1, 2, 3]


# Step 3 : return a two dimensional array - check why new[idx1] << ele1 is not working
new = []

new << "a"
new << "b"

puts new
print new
# a
# b
# ["a", "b"]

new[0] << "c"
new[1] << "d"
puts new
print new
# ac
# bd
# ["ac", "bd"]

########### This is IMPOSSIBLE ###########
# word = []
# word[0] << "c"
# nord[1] << "d"
# puts word
# print word


# Step 4 : Make a correct method/type
def combinations(arr)

    new = []
    temp = [] 
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
  
            if ele1 < ele2
                temp << ele1
                temp << ele2
                new << temp
                temp = []

                # puts ele1 + ele2
                # puts idx1.to_s + " " + idx2.to_s
                # puts "----"

                # new[idx] << ele1
            end
            
        end
    end
    return new

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


# My final solution
def combinations(arr)

    new = []
    temp = [] 
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
  
            if ele1 < ele2
                temp << ele1
                temp << ele2
                new << temp
                temp = []
            end
            
        end
    end
    return new

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


# My final solution - updated based on teacher's solution
def combinations(arr)

    new = []
    
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
  
            if ele1 < ele2
                new << [ ele1, ele2]
            end
            
        end
    end
    return new

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


# Teacher's solution
def combinations(arr)
pairs = []

arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
    if idx2 > idx1
        pairs << [ ele1, ele2 ]
    end
    end
end

return pairs
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


# Explanation

# Step 1
def combinations(arr)
    pairs = []

    arr.each do |ele1|
        arr.each do |ele2|
            pairs << [ele1, ele2]
        
        end
    end

    return pairs 

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts

# [["a", "a"], ["a", "b"], ["a", "c"], ["b", "a"], ["b", "b"], ["b", "c"], ["c", "a"], ["c", "b"], ["c", "c"]]
# [[0, 0], [0, 1], [0, 2], [0, 3], [1, 0], [1, 1], [1, 2], [1, 3], [2, 0], [2, 1], [2, 2], [2, 3], [3, 0], [3, 1], [3, 2], [3, 3]]


# Step 2 : if I need to compare indices to consider the position of elements, use '.each_with_index'
def combinations(arr)
    pairs = []

    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if idx2 > idx1
                pairs << [ele1, ele2]
            end
        end
    end

    return pairs 

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts