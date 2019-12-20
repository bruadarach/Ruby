# SCOPE? what is the matter? 
# - assign a variable in a scope / Where to assign? : $global scope 
# - see it is able to access and call in another scope. / Possible to call? $global scope

### Lexical Scope
# Lexical scope describes how a variable name evaluates in nested code. 
# In other words, how variable names resolve if we put them in structures like methods, conditionals, or blocks.


### Local Scope - locally defined, so only call in the local scope
# say_hello method has it's own scope where the variable message is defined. 
# This means we are free to reference and print that variable in that same scope. 
# The say_hello method is a local scope.
def say_hello
    message = "hello"
    p message
end

say_hello
# "hello"


# 2 scopes : DEFINED VARIABLES inside of def say_hello / outside of def say_hello
# 'p message' outside of the def say_hellp method/scope CANNOT reference the message variable!
def say_hello
    message = "hello"
    #p message # NameError: undefined local variable
end

say_hello
# NameError: undefined local variable
# ERROR: 133_scope.rb:25:in `<main>': undefined local variable or method `message' for main:Object (NameError)


# Let's try the opposite scenario. 
# What if we had defined a variable in the surrounding scope and tried to reference it within the say_hello scope:

message = "hi, this message is outside of def say_hello"

def say_hello
    #p message # NameError: undefined local variable
end

say_hello
# 133_scope.rb:37:in `say_hello': undefined local variable or method `message' for main:Object (NameError)
# NameError: undefined local variable


### Global Scope $variable_name! - globally defined, so anywhere you can call
# Everywhere area in our code can access the global scope. 
# To define variables in the global scope, we must use special syntax. '$'
# Creating a global variable is simple, put a $ at the beginning of the name. 
# Here's a similar example, this time creating the global $message inside of say_hello 
# but referencing it from the outside:
# we can reference a $variable_name anywhere in our program because it is global!

# Case 1
$message = "hellp globe"

def say_hello
    p $message
end

say_hello
#"hellp globe"


# Case 2
def say_hello
    $message = "message inside of def"
end

say_hello
p $message
# "message inside of def"


### Constants   e.g.) Food = "noodle" or FOOD = "noodle" / kind of a global scope, but only defined in a global scope
# A constant is denoted syntactically by beginning the name with a capital letter.
# By convention we like to make the entire name capital to emphasize it being a special constant.
# A constant variable cannot be reassigned:


FOOD = "bibimbab"
p FOOD 
# => "Bibimbab"


# ERROR OCCURS WHEN REASSIGNING!!! 

# FOOD = "Fishcake"                                 

#warning: already initialized constant FOOD
#warning: previous definition of FOOD was here

##### Constants Can Change!!
# But you will see this warning message:
# warning: already initialized constant ABC
# Your program will still work fine, but you want to avoid this.
ABC = "a"
ABC = "b"
ABC = "c"
p ABC
# "c"


# Can I mutate the value of constant ? YES!
# A common point of confusion is that while you cannot reassign a constant, 
# you can still mutate that constant name without warning:
# it means that The key takeaway is that constants can still mutate or be "changed", they just can't be reassigned.
FOOD = "bibimbob"
FOOD[0] = "B"
p FOOD
# "Bibimbob"


### Constants will exist in Global Scope !!!
# this is the way to use constant! 
# THEN, HOW IT WORKS? defined in the global scope, and can call inside the local scope of def block
# It means that constant is not allowed to define inside the local scope of def! only in global scope!? 

FOOD = "pasta"
$drink = "water"

def my_favorite
    p FOOD
    p $drink
end 

my_favorite
# "pasta"
# "water"


# Notice that you can’t define constants inside a method.
# ERROR: dynamic constant assignment
# So just define your constants outside methods, 
# typically we want to have constant definitions at the top of your class so they are clearly visible.
def my_favorite
    #EAT = "noodle" #=> not working!!
    $drink = "coke"
end 

# p EAT             #=> not working!!
p $drink
# error: dynamic constant assignment


# C.f.) .freeze
# There is no way to prevent a constant from changing because variables in Ruby are not containers, they are simply pointers to objects.
# Or labels, if you prefer.
# The best you can do is to use immutable objects.

# In this example, you can still change what the AUTHOR constant is pointing to, 
# the only thing freeze protects you from is from changing the object itself.

AUTHOR = "Jesus Castello".freeze
#AUTHOR << "o"     #=> an error occors!!

# RuntimeError: can't modify frozen String


##### What does not have it's own scope? BLOCK/IF/While lOOPS - I think it is just the same of local scope! 
# e.g.)  Although a variable is defined within the if statement below, 
#        it is still accessible outside of the if statement, 
#        because if's don't have their own scope.

def say_bye
    message1 = "bye"

    3.times do
        p message1
        message2 = "I am inside the block!"
    end
end

say_bye
# "bye"
# "bye"
# "bye"

#p message1 # This is a local variable insider of local scope of def, so not available to call outside of its scope!
# ERROR : undefined local variable or method `message1'

#p message2 # This is a local variable inside of local scope within a block, so not available to call outside of its scope!
# ERROR : undefined local variable or method `message1'


## e.g.) If statement
if true
    whatdrunk = "coffee"
end

#p whatdrink
# ERROR : undefined local variable or method `whatdrink' for main:Object


########## LOCAL SCOPE
# Teacher's Lecture
food = "pizza"
p food
# 
"pizza"


##########
def say_hello3 # say_hello has its own scope!
    message3="hi"
    p message3
end

say_hello3
# "hi"


########## ERROR case 1
message4 = "outside of def" # seperate, different scope! 

def say_hello4
    p message4 # not calling! 
end

say_hello4
# ERROR!! undefined local variable or method


########## ERROR case 2
def say_hello5
    message5 = "inside of def"
end 

p message5
# ERROR!! undefined local variable or method


########## $GLOBAL SCOPE case 1
$message4 = "outside of def" # seperate, different scope! 

def say_hello4
    p $message4 # not calling! 
end

say_hello4
# "outside of def"


########## $GLOBAL SCOPE case 2
def say_hello5
    $message5 = "inside of def"
end 

p $message5
# "inside of def"


########## $GLOBAL SCOPE - anotehr way to add a variable to the global scope
########## : CONSTANT/Constant 
WHATFOOD = "pasta"
p WHATFOOD
# "pasta"

WHATFOOD = "pizza" # ERROR: not be able to reassign! 

# Mutation of constnat is possible - using operations
WHATFOOD = "pasta"
WHATFOOD.upcase!
p WHATFOOD 
# "PASTA"

WHATFOOD[0] = "P"
p WHATFOOD 
# "Pasta"


# Just act like a global scope
WHATFOOD = "pasta"

def my_method
    p WHATFOOD
end

my_method
# "pasta"


########## NO SCOPE(=local scope) : 1. Block doesn't have its own scope 
message7 = "bye"

3.times do
    p message7
end
# "bye"
# "bye"
# "bye"

########## NO SCOPE(=local scope) : 2. IF Statement doesn't have its own scope 

if true
    mesasge8 = "bye"
end

p message8
#"bye"

########## NO SCOPE(=local scope) : 2. WHILE Loop doesn't have its own scop