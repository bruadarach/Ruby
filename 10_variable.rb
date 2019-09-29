# Variables - store some data

location = "SF" # variable (name)= value (assigned)
puts location # call by name of variable

my_num = 42
puts my_num #42

my_num = 42
puts my_num + 8 # 42 + 8 = 50

my_num = 42
my_num + 8
puts my_num # 42

my_num = 42
my_num = my_num + 8 # how to change "my_num? reassign ="
puts my_num # 50

my_num = 42
my_num = 8
puts my_num # 8

# Variables
# count += 1 # same as 'count = count + 1'

count = 10
puts count # 10

count = 10
count = count + 1 # reassign "count ="
puts count # 11

count = 10
count += 1 # same as 'count = count + 1'
puts count # 11

count = 10
count += 5 # same as 'count = count + 5'
puts count # 15

count = 10
count += 5 # same as 'count = count + 5'
count += 2
puts count # 17

count = 10
count -= 5
puts count # 5

count = 10
count /= 5
puts count # 2

count = 10
count *= 5
puts count # 50

num = 12 
is_even = num % 2 == 0 # boolean # 0 == 0 # true
puts is_even # true

num = 13
is_even = num % 2 == 0 # boolean # remainder 1 == 1 # false
puts is_even # false

# Variables Exercise 1

 # 1. Declare a variable named `firstName` and assign it your first name as a string:
 firstName = "Lucky"

 # 2. Declare a variable named `lastName` and assign it your last name as a string:
 lastName = "Ji"
 
 # 3. Declare a variable named `fullName` and assign it the concatenation of
 # your `firstName` and `lastName`. Be sure to put a space between your
 # first and last names:
 fullName = firstName + ' ' + lastName
 
 # 4. print out the `fullName` variable
 puts fullName


 # Variable Exercise 2

sentence = "There is no spoon"
puts "---1:"
puts sentence + "?"   # There is no spoon?

puts "---2:"
puts sentence         # There is no spoon

sentence += "."       # sentence = setence + "."
puts "---3:"
puts sentence         # There is no spoon.

num = 6 / 2
puts "---4:"
puts num              # 3

puts "---5:"
puts sentence[num]    # r

# Variable Exercise 3

num = 40
num + 5
puts "---1:"
puts num                   # 40

num += 2
puts "---2:"
puts num                   # 42

isEven = num % 2 == 0
puts "---3:"
puts isEven                # true

isNegative = num < 0
puts "---4:"
puts isNegative            # false

puts "---5:"
puts isEven || isNegative  # true # OR || 하나라도 true면 true

puts "---6:"
puts isEven && isNegative  # false # AND && 하나라도 false면 false

puts "---7:"
puts isEven && !isNegative # true # AND && 하나라도 false면 false
