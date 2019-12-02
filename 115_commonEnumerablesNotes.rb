##### all? ##### 
# Return true when all elements result in true when passed into the block.
puts [2,4,6].all? { |i| i.even? } #=> true (all elements are even? yes = true, no = false)
# true
puts [2,4,5].all? { |i| i.even? } #=> 5 is not even!
# false


##### any? #####
# Return true when all at least one element results in true when passed into the block.
puts [1,1,2].any? { |i| i.even? } #=> at least one is true? 
# true 
puts [1,1,1].any? { |i| i.even? }
# false


##### none? ##### :
# Return true when no elements of result in true when passed into the block.
puts [1,3,5].none? { |i| i.even? }
# true 
puts [1,1,1,2].none? { |i| i.even? }
# false


##### one? #####
# Return true when exactly one element results in true when passed into the block.
puts [1,1,1,1,1,2].one? { |i| i.even? }
# true
puts [1,1,1,1,1,2,2].one? { |i| i.even? }
puts [1,3,5].one? { |i| i.even? }
# false
# false


##### count #####
# Return a number representing the count of elements that result in true when passed into the block.
puts [1,1,1,1,1,2,2].count { |i| i.even? }
# 2
puts [1,3,5].count { |i| i.even? }
# 0


##### sum ##### 
# Return the total sum of all elements
puts [1,-1,5].sum  
# 5


##### max / min #####
puts [1, 3, 5].max
# 5
puts [1, 3, 5].min
# 1
puts [].max
# nil


##### flatten #####
# Return the 1 dimensional version of any multidimensional array
multi_d = [
    "a",
    [["b","c"]],
    [["d",["e","f"]]],
    "g"
]

p multi_d.flatten
# ["a", "b", "c", "d", "e", "f", "g"]