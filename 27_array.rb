# Arrays

# Difference between puts VS. print?
letters = ["a", "b", "c"]

puts letters 
# a
# b
# c

print letters
# ["a", "b", "c"]

puts letters.length
#3

puts letters[0] # a
puts letters[1] # b

#Different types are okay in array
my_arr = ["alvin", true, false, 42]

print my_arr
#["alvin", true, false, 42]

print my_arr[1]
#true

# Add at the end of an array!
names = [
    "Suji", 
    "Tomy", 
    "San"
]

print names
# ["Suji", "Tomy", "San"]
print "\n"

names << "Vanessa"
names << "Kristel"
print names
["Suji", "Tomy", "San", "Vanessa", "Kristel"]

# Assign a specific value to an array? switch a value!
# "Tomy" is gone and "Cas" is in!
names[1] = "Cas"
print names
# ["Suji", "Cas", "San", "Vanessa", "Kristel"]

# How to iterate a loop in array

foods = ["pizza", "apple", "sushi", "burgers", "soup"]

puts foods[3]
# burgers

# How to express in another way?
i = 3
puts foods[3]
# burgers

# Make it more dynamic!
i = 0
while i < foods.length
    puts foods[i]
    i += 1
end
# burgers
# pizza
# apple
# sushi
# burgers
# soup

# Let's ake a method

def print_array(arr)
    i = 0
    while i < arr.length
        puts arr[i]
        i += 1
    end
end

foods = ["pizza", "apple", "sushi"];
print_array(foods)
# pizza
# apple
# sushi

peeps = ["Love", "Friendship"]
print_array(peeps)
# Love
# Friendship


