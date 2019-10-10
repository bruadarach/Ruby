# Index / Include

# (1) array/string.index(ele) - evaluates to the index where ele is found
# (2) array/string.include?(ele) - evaluate to a boolean indicating if ele is found


### Let's check with an ARRAY - index ###

# .index("") - return an index back
arr = ["SF", "NY", "LA"]
puts arr.index("LA") # 2
puts arr.index("NL") # nothing back


### Let's check with an ARRAY - include? ###

# .include("") - return a boolean back
arr = ["SF", "NY", "LA"]
puts arr.include?("NY") # true
puts arr.include?("NL") # false


### Let's check with a STRING - include? ###
str = "hello"
puts str.include?("e") # true

# Ruby is case sensitive!!
puts str.include?("E") # false

# Can find a substring? yes
puts str.include?("ello") # true


### Let's check with a STRING - index ###
str = "hello"
puts str.index("e") # 1 
puts str.index("ello") # 1 # where to start to find this
puts str.index("xxx") # nothing back