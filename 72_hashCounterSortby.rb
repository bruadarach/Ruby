# Hashes
#   counter Hash
#   sort_by

# how to count the number of characters that appear?
str = "mississippi river"
# step 1 : initialize all default values as 0 and then add 1 when it appears

# only way to choose a default value? Hash.new()
count = Hash.new(0) # 0 becomes an initial value
# THEREFORE, 'count = Hash.new(0)' sets that count = {} + default value = 0

puts count # {}
puts count["m"] # 0


# step 2 : iterate all characters
str.each_char { |char| count[char] += 1 } # count = {}, default value = 0
puts count
# {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}


##### another way to count in order? upto the most frequent character! use 'sort_by'
print count
# {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}
puts 
print count.sort_by { |k, v| v} # { |hash elements| how to sort? which standard?} # v = ascending order
# [["e", 1], [" ", 1], ["v", 1], ["m", 1], ["r", 2], ["p", 2], ["s", 4], ["i", 5]]
##### hash to an array in order

sorted = count.sort_by { |k, v| v}
puts 
print sorted
# [["e", 1], [" ", 1], ["v", 1], ["m", 1], ["r", 2], ["p", 2], ["s", 4], ["i", 5]]

# you can also call a subarray
puts
print sorted[-1]
# ["i", 5]
print sorted[-1][0]
# i

puts
print count.sort_by { |k, v| k} # k = alphabetical order 
[[" ", 1], ["e", 1], ["i", 5], ["m", 1], ["p", 2], ["r", 2], ["s", 4], ["v", 1]]



