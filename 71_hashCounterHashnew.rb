# Hashes (Counter Hash)
# default value nil
# Hash.new(default)
# counter hash strategy

counter = Hash.new(0)
str = "ssllekbbb"
str.each_char do |char|
    counter[char] += 1
end 

puts counter
# {"s"=>2, "l"=>2, "e"=>1, "k"=>1, "b"=>3}

counter = Hash.new(0)
str = "ssllekbbb"
str.each_char { |char| counter[char] += 1 } 
puts counter
# {"s"=>2, "l"=>2, "e"=>1, "k"=>1, "b"=>3}


# EXPLANATION # 
my_hash = {
    "a" => 28
}

puts my_hash["a"]
# 28

# What if I try to print "b", which is not a key existing in the hash?
puts my_hash["b"]
# see NOTHING

# the default value of "b" is 'nil'
# HOW TO PROVE?
puts my_hash["b"] == nil
# true

##### nil = nothingness, emptiness 

puts my_hash["a"] == nil
# false

# How to set a default value 0 in a hash? Hash.new(default)
my_hash1 = Hash.new(0)
puts my_hash1
# {}
puts my_hash1["a"]
# 0
puts my_hash1["b"]
# 0

my_hash2 = Hash.new("hello")
puts my_hash2
# {}
puts my_hash2["a"]
# hello

my_hash2["a"] = "goodbye"
puts my_hash2
# {"a"=>"goodbye"}

puts my_hash2["a"]
# goodbye

puts my_hash2["b"]
# hello

counter = Hash.new(0)
str = "bootcamp prep"

str.each_char { |char| counter[char] += 1 }
puts counter
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>3, " "=>1, "r"=>1, "e"=>1}

counter = Hash.new(0)
str = "bootcamp prep"

str.each_char do |char| 
    puts char
    counter[char] += 1
    puts counter
end
# b
# {"b"=>1}
# o
# {"b"=>1, "o"=>1}
# o
# {"b"=>1, "o"=>2}
# t
# {"b"=>1, "o"=>2, "t"=>1}
# c
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1}
# a
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1}
# m
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1}
# p
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1}
 
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1, " "=>1}
# p
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1}
# r
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1, "r"=>1}
# e
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1, "r"=>1, "e"=>1}
# p
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>3, " "=>1, "r"=>1, "e"=>1}


my_hash3 = {"a" => 42, "b" => 10}

puts my_hash3["a"]
# 42

# you can use a variable
key = "b"
puts my_hash3[key]
# 10


counter = Hash.new(0)
puts counter
# {}
puts counter["b"]
# 0
puts counter["o"]
# 0 
puts counter
# {}

str = "bootcamp prep"

str.each_char do |char| 
    puts char
#     counter[char] += 1
#     puts counter
end
# b
# o
# o
# t
# c
# a
# m
# p
 
# p
# r
# e
# p

counter = Hash.new(0)

str = "bootcamp prep"

str.each_char do |char| 
    puts char
#     counter[char] += 1
    puts counter
end
# b
# {}
# o
# {}
# o
# {}
# t
# {}
# c
# {}
# a
# {}
# m
# {}
# p
# {}
 
# {}
# p
# {}
# r
# {}
# e
# {}
# p
# {}

counter = Hash.new(0)

str = "bootcamp prep"

str.each_char do |char| 
    puts char
    puts counter[char]
#     counter[char] += 1
    puts counter
end
# b
# {}
# o
# {}
# o
# {}
# t
# {}
# c
# {}
# a
# {}
# m
# {}
# p
# {}
 
# {}
# p
# {}
# r
# {}
# e
# {}
# p
# {}
# b
# 0
# {}
# o
# 0
# {}
# o
# 0
# {}
# t
# 0
# {}
# c
# 0
# {}
# a
# 0
# {}
# m
# 0
# {}
# p
# 0
# {}
 
# 0
# {}
# p
# 0
# {}
# r
# 0
# {}
# e
# 0
# {}
# p
# 0
# {}

### How to add a new key and value into a hash?
### dog["name"] = "Cookie"

counter = Hash.new(0)

str = "bootcamp prep"
puts counter["b"] # 0 
puts counter["o"] # 0 
puts counter["t"] # 0 
puts counter["c"] # 0 

str.each_char do |char| 
    puts "---char---"
    puts char
    # b
    # o
    # o 
    # t
    # c
    # a
    # m 
    # p

    counter[char] += 1 # counter[char] = counter[char] + 1
    puts "---counter[char]---"
    puts counter[char]
    # counter[b] = counter[b] + 1 = 0 + 1 = 1 / counter[b] = 1 added
    # counter[o] = counter[o] + 1 = 0 + 1 = 1 / counter[o] = 1 added
    # counter[o] = counter[o] + 1 = 1 + 1 = 2 / counter[o] = 2 added
    # counter[t] = counter[t] + 1 = 0 + 1 = 1 / counter[t] = 1 added
    # counter[c] = counter[c] + 1 = 0 + 1 = 1 / counter[c] = 1 added
    # counter[a] = counter[a] + 1 = 0 + 1 = 1 / counter[a] = 1 added
    # counter[m] = counter[m] + 1 = 0 + 1 = 1 / counter[m] = 1 added
    # counter[p] = counter[p] + 1 = 0 + 1 = 1 / counter[p] = 1 added

    puts "---final counter---"
    puts counter
    # {"b"=>1}
    # {"b"=>1, "o"=>1}
    # {"b"=>1, "o"=>2}
    # {"b"=>1, "o"=>2, "t"=>1}
    # {"b"=>1, "o"=>2, "t"=>1, "c"=>1}
    # {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1}
    # {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1}
    # {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1}
end