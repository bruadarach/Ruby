# split / join

# (1) string.split : evaluates "to an array"
# split : Return an array / from a string to an array! 
# split divides str into substrings based on a delimiter, returning an array of these substrings.

        # " now's  the time".split        #=> ["now's", "the", "time"]
        # " now's  the time".split(' ')   #=> ["now's", "the", "time"]
        # " now's  the time".split(/ /)   #=> ["", "now's", "", "the", "time"]
        # "1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
        # "hello".split(//)               #=> ["h", "e", "l", "l", "o"]
        # "hello".split(//, 3)            #=> ["h", "e", "llo"]
        # "hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]

        # "mellow yellow".split("ello")   #=> ["m", "w y", "w"]
        # "1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]
        # "1,2,,3,4,,".split(',', 4)      #=> ["1", "2", "", "3,4,,"]
        # "1,2,,3,4,,".split(',', -4)     #=> ["1", "2", "", "3", "4", "", ""]

        # "1:2:3".split(/(:)()()/, 2)     #=> ["1", ":", "", "", "2:3"]

        # "".split(',', -1)               #=> []


# (2) array.join : evaluate to a string
# join: Returns a string / from an array to a string!
# join returns a string created by converting each element of the array to a string, separated by the given separator. If the separator is nil, it uses current $,. If both the separator and $, are nil, it uses an empty string.

        # [ "a", "b", "c" ].join        #=> "abc"
        # [ "a", "b", "c" ].join("-")   #=> "a-b-c"

        # If the separator is nil, it uses current $,. 
        # If both the separator and $, are nil, it uses an empty string.

        # For nested arrays, join is applied recursively:
        # [ "a", [1, 2, [:x, :y]], "b" ].join("-")   #=> "a-1-2-x-y-b"


### Let's split with a STRING! from a string to an array ###
str = "follow the blue brink road"

puts str
# follow the blue brink road 
print str
# follow the blue brink road

puts str.split(" ")
# follow
# the
# blue
# brink
# road

print str.split(" ") 
# ["follow", "the", "blue", "brink", "road"]
puts

print str.split("b")
# ["follow the ", "lue ", "rink road"]
puts

print str.split("the")
# ["follow ", " blue brink road"]
puts

puts str # still string form, the original is UNCHANGED!
# follow the blue brink road

# If you want to save the changed result? contain in a new variable
word = str.split(" ")
puts word
# follow
# the
# blue
# brink
# road

print word
# ["follow", "the", "blue", "brink", "road"]

# So, if you want to print out "blue"?
puts word[2] # blue
print word[2] # blue


### Let's join with an ARRAY! from an array to a string ###

arr = ["hello", "world", "how", "are", "you"]
puts arr
# hello
# world
# how
# are
# you

print arr
# ["hello", "world", "how", "are", "you"]

puts arr.join(" ")
# hello world how are you

print arr.join(" ")
# hello world how are you

puts arr.join("!")
# hello!world!how!are!you

# Question? why not, arr.join(" ")    !=    ["hello", " ", "world", " ", "how", " ", "are", " ", "you"]?
# ANSWER: Because, join takes an array and return a string
arr2 = ["hello", " ", "world", " ", "how", " ", "are", " ", "you"]
puts arr2
# hello
 
# world
 
# how
 
# are
 
# you
print arr2
# ["hello", " ", "world", " ", "how", " ", "are", " ", "you"]


### Ok, again split ###
# if you want to slice every single character of a string and return it into an array?
str = "follow the yello brick road"
char = str.split("") # cut every single charater of a string
print char
# ["f", "o", "l", "l", "o", "w", " ", "t", "h", "e", " ", "y", "e", "l", "l", "o", " ", "b", "r", "i", "c", "k", " ", "r", "o", "a", "d"]

str = "follow the yello brick road"
print str.split("l")
puts
# ["fo", "", "ow the ye", "", "o brick road"]
# (!) there is an empty string in an output! ]
# the empty "" means that it just symbolized that it cuts dounble "l"s
puts

# If you use split + join? = replace split("") with join("")!
str = "follow the yello brick road"
print str.split("l").join("Z")
# oZZow the yeZZo brick road

print str.split("o").join("x") 
# xllxw the yellx brick rxad
