##### Symbols #####


# Ruby has an additional data type that is similar to Strings, called Symbols. Let's explore what differentiates a Symbol from a String, and how to use them in our code. In Ruby, we can denote a symbol using a colon (:) before writing characters. Where a string is wrapped in quotes, a symbol just has a leading colon. Both strings and symbols contain many characters, but they are not equivalent.

str = "hello" # string # mutable - can change
sym = :hello # symbol # immutable - can't change

puts str.length #=> 5
puts sym.length #=> 5

p str[1] #=> "e"
p sym[1] #=> "e"

p str == sym #=> false


### Symbols are Immutable (= symbles can't change / strings can change)
# The most apparent difference between strings and symbols is that strings are mutable, while symbols are immutable. This means that string can be "changed", but a symbol can never be "changed":
str = "hello"
str[0] = "j"
puts str 
# jello

# sym = :hello
# sym[0] = "p"
# p sym 
# # Error


### allocate a piece of our machine's memory to store that string
# ojbect_id

# string = (memory location) all different!
# how duplicate value strings will be stored at different memory locations:
p "hi".object_id #=> 70329695265580
p "hi".object_id #=> 70329695265460
p "hi".object_id # => 7032969525380

# symbols = (memory location) all the same! 
# A symbol value will be stored in exactly one memory location:
p :hello.object_id #=> 1025628
p :hello.object_id #=> 1025628
p :hello.object_id #=> 1025628
 

### Symbols as hash keys
my_bootcamp1 = {:name => "Suji", :color => "red", :location => ["online", "offline"]}
p my_bootcamp1
p my_bootcamp1[:name] # "Suji"

my_bootcamp2 = { name: "Suji", color: "pink", location: ["Seoul", "Amsterdam"]}
p my_bootcamp2
p my_bootcamp2[:location] # ["Seoul", "Amsterdam"]

# p my_bootcamp[color] # ERROR! Need to add ':' in front