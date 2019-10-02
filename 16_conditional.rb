# Conditionals

### practice 1 - if ###
num = 42

if num > 0
    puts "positive"
end
# positive


### practice 2 - if ###
num = -5

if num > 0
    puts "positive"
end
# nothing printed


### practice 3 - if / else ###
num = -5

if num > 0
    puts "positive"
else
    puts "negative"
end
# negative 


### practice 4  - elsif ###
num = 0

if num > 0
    puts "positive"
elsif num < 0
    puts "negative"
else
    puts "it is zero!"
end
# it is zero!


### practice 5 - two if(s) ###
num = 8

if num > 0
    puts "positive"
end
# positive

if num % 2 == 0
    puts "even"
end
# even


num = 9

if num > 0
    puts "positive"
end
# positive

if num % 2 == 0
    puts "even"
end
# nothing printed

num = -6

if num > 0
    puts "positive"
end
# nothing printed

if num % 2 == 0
    puts "even"
end
# even


### practice 5 - two if(s) VS. if/elsif ###
num = 8

if num > 0
    puts "positive" 
elsif num % 2 == 0
    puts "even"
end
# positive # "even" is not printed !

# else or els makes the condition exclusive 
# - once I choose only one thing, it excludes all the other ones
# - thus, it even doesn't bother checking the other things!

# the answers are
# - two if(s) : positive & even
# - if/elsif : positive (and 'even' is excluded)

