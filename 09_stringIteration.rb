# Iterating Through Strings with Loops

str = "Hello"
puts str[0] # H
puts str[1] # e
puts str[2] # l
puts str[3] # l
puts str[4] # o
puts str[5] # nothing

puts str[-1] # o
puts str[-2] # l
puts str[-3] # l
puts str[-4] # e
puts str[-5] # H
puts str[-6] # nothing

# assign a variable and see how it works
i = 2
# puts str[2] -> i = 2 -> str[i]
puts str[i] # l

i = 0 # from 0 to 4 / "Hello" = [0][1][2][3][4]
while i < 5 # index is from 0 to 4, so set less than 5
    puts i
    i += 1
end 
# 0
# 1
# 2
# 3 
# 4

# what if I print string[i] ?
i = 0 # from 0 to 4 / "Hello" = [0][1][2][3][4]
while i < 5 # index is from 0 to 4, so set less than 5
    puts str[i]
    i += 1
end 
# H
# e
# l
# l 
# o

# i < 5 limits the result printed! 
str = "Hello world"
i = 0 # from 0 to 4 / "Hello" = [0][1][2][3][4]
while i < 5 # index is from 0 to 4, so set less than 5
    puts str[i]
    i += 1
end 
# H
# e
# l
# l 
# o

# If you want to make all string printed? str.length!
str = "Hello world"
i = 0 # from 0 to 4 / "Hello" = [0][1][2][3][4]
while i < str.length # index is from 0 to 4, so set less than 5
    puts str[i]
    i += 1
end 
# H
# e
# l
# l 
# o
# 
# w
# o
# r
# l
# d

# create a method and put them inside 
def printChars(str)
    i = 0
    while i < str.length
        puts str[i]

        i += 1
    end
end

printChars('lucky')

# l
# u
# c
# k
# y
