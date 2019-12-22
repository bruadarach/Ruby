##### Array.new(number, default value)
##### with default setting/values
arr = []
arr = Array.new(3) # initialize an array with the certain number of defaults
p arr
# [nil, nil, nil]

p arr=Array.new(10)
# [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
p arr=Array.new(10,"?")
# ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"]


p arr=Array.new(10,0)
# [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
arr[0] = 1
p 
# [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]


p arr=Array.new(3,[]) # create a sub array like 2d-array
[[], [], []]


### Syntax 1 ###
p grid=Array.new(3,Array.new(3))
# [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

# how to modify?
grid[0][0] = "X" # for all subarrays! as it is pointing out to the same address! 
p grid
[["X", nil, nil], ["X", nil, nil], ["X", nil, nil]]
##### 3 same subarrays!! therefore, X's of all [0][0]! 


### Syntax 2 ### : USE BLOCKS!!!
# OK, then, let's try a different syntax!
p grid = Array.new(3) { Array.new(3) }
# [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

# Let's modify
grid[0][0] = "X"
p grid
# [["X", nil, nil], [nil, nil, nil], [nil, nil, nil]]
##### 3 distinct subarays!!!! 