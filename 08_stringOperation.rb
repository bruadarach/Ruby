# String Operations Lecture

# String contains multiple characters
puts "Hello World! 123 $%^"

# length = the  number of characters
puts "Hello".length # 5
puts "Hello World".length # 11 # count space as well!

# pick out a single character
puts "Hello" # H = index(=position) 0
puts "Hello"[0] # H
puts "Hello"[1] # e
puts "Hello"[2] # l
puts "Hello"[3] # l
puts "Hello"[4] #o
puts "Hello"[5] # nothing, only empty line
puts "Hello"[6] # nothing, only empty line

# index Vs. length
    # - index : hello = [0][1][2][3][4][5]
    # - length : hello = 5 (characters)

str = 'Hello'
puts str.length # 5
puts str[4] # o

# concatenate strings (= add/connect strings together)
puts "Hello" + "World" # HelloWorld
puts "Hello " + "World" # Hello World
puts "Hello" + " World" # Hello World
puts "Hello" + " World" + ", How are you?" # Hello World, How are you?

# Summary
    # - The first character of a string has index 0
    # - ".length" will give back the number of characters in a string. 
    # - The last index of a string is always 1 less than the string's length, 
    #   because indices start at 0.

