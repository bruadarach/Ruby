# Array-Giving Enumerables
#   map    /     new_arr = arr.map do |ele|
#   map.with_index     /     new_arr = arr.map.with_index do |ele, ixd|

# Using 'map'
arr = ["banana", "DaNce", "lucKY", "ORANge"]

new_arr = arr.map { |word| word[0].upcase + word[1..-1].downcase }
print new_arr
puts
# ["Banana", "Dance", "Lucky", "Orange"]


# Using do with multiple lines below
arr = ["banana", "DaNce", "lucKY", "ORANge"]

new_arr = arr.map do |ele|
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    first_char + rest
end

print new_arr
puts
# ["Banana", "Dance", "Lucky", "Orange"]


# if you add "hello", what happens? 
# the last line is going to be take as a new element
arr = ["banana", "DaNce", "lucKY", "ORANge"]

new_arr = arr.map do |ele|
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    first_char + rest
    "hello"
end

print new_arr
puts
# ["hello", "hello", "hello", "hello"]


# Practice 1 - each {} : no need 'put/print/return', as it automatically returns iterated values!
months = ["Jan", "Feb", "Mar", "Apr"]

months.each { |month| puts month } 
# Jan
# Feb
# Mar
# Apr


# Practice 2 - each do with multiple lines : need 'put/print/return' to returns iterated values!
months = ["Jan", "Feb", "Mar", "Apr"]

months.each do |month|
    puts month
end
# Jan
# Feb
# Mar
# Apr


# Practice 3 - each {} / what about assigning 'new' and then adding "hello" in the end?
desk = ["Cosmetics", "Candle", "Lipstics", "Spray"]

new = desk.each do |ele|
end
print new
# ["Cosmetics", "Candle", "Lipstics", "Spray"]


# NOT WORKING
desk = ["COSMETICS", "CANDLE", "lipstic", "spray"]

newbox = desk.each do |ele| 
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    first_char + rest
    "hello"
end
print newbox
# ["COSMETICS", "CANDLE", "lipstic", "spray"]


# Step 0 : using do without additional lines, but not assigning into a new variable 'new_arr'
# each, do, p/puts/print, (X) not assign into a new variable in the first line # WORKING
desk = ["COSMETICS", "CANDLE", "lipstic", "spray"]

desk.each do |ele| 
end
# nothing printed w/o 'p/puts/print'


desk.each do |ele| 
    puts ele
end
# COSMETICS
# CANDLE
# lipstic
# spray


# Step 1 : using do and puts, with multiple lines, but not assigning into a new variable 'new_arr'
# each, do, p/puts/print, (X) not assign into a new variable in the first line # WORKING, but not return an array format! 
desk = ["COSMETICS", "CANDLE", "lipstic", "spray"]

puts "============"
desk.each do |ele| 
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    puts first_char + rest
end
# Cosmetics
# Candle
# Lipstic
# Spray


desk = ["COSMETICS", "CANDLE", "lipstic", "spray"]

desk.each do |ele| 
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    print first_char + rest
end
# CosmeticsCandleLipsticSpray


# Step 2 : using do with multiple lines, without puts, but assigning into a new variable 'new_arr'
# each, do, without p/puts/print, assign into a new variable in the first line # NOT WORKING # return an array format
desk = ["COSMETICS", "CANDLE", "lipstic", "spray"]

new_arr = desk.each do |ele| 
    first_char = ele[0].upcase # NOT WORKING
    rest = ele[1..-1].downcase # NOT WORKING
    first_char + rest # NOT WORKING
    # "hello"
end
print new_arr
# ["COSMETICS", "CANDLE", "lipstic", "spray"]


desk = ["COSMETICS", "CANDLE", "lipstic", "spray"]

new_arr = desk.each do |ele| # Only this line is valid and working
    first_char = ele[0].upcase # NOT WORKING
    rest = ele[1..-1].downcase # NOT WORKING
    puts first_char + rest # NOT WORKING
    # "hello"
end

# print new_arr
# ["COSMETICS", "CANDLE", "lipstic", "spray"]


# Step 3 : using map with multiple lines, without p/puts/print, assigning into a new variable 'new_arr'
# map, do, without p/puts/print, assign into a new variable in the first line # WORKIKNG
arr = ["COSMETICS", "CANDLE", "lipstic", "spray"]

new_arr = arr.map do |ele| # WORKING
    first_char = ele[0].upcase # WORKING
    rest = ele[1..-1].downcase # WORKING
    first_char + rest # WORKING
end

print new_arr
puts
# ["Cosmetics", "Candle", "Lipstic", "Spray"]


# CONCLUSION: strength of 'map'? 
# - Assign new values into a new variable directly! 
# - No need p/puts/print to print
# - Return an array foramt with new values automatically


# map.with_index
arr = ["banana", "DaNce", "lucKY", "ORANge"]

new_arr = arr.map do |ele|
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    first_char + rest
end

print new_arr
puts
# ["Banana", "Dance", "Lucky", "Orange"]


arr = ["banana", "DaNce", "lucKY", "ORANge"]

new_arr = arr.map.with_index do |ele, idx|
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    new_word = first_char + rest
    new_word * idx # repeat the string multiple times
end

print new_arr
puts
# ["", "Dance", "LuckyLucky", "OrangeOrangeOrange"]   # => [*0, *1, *2, *3

