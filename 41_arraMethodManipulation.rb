# << adds an element to the end of an array, evaluates to the array 

# array.push adds an elemen(s) to the end of an array, evaluates to the array 
# array.pop removes he last element of an array, evaluate to the element that was removed

# array.unshift adds an element to the front of an array, evaluates to the array
# array.shift removes the first element of an array, evaluates to the element that was removed

arr = ["vanessa", "cas", "dave"]
print arr
puts

# << add only ONE single element
print arr << "suji" # ["vanessa", "cas", "dave", "suji"]
print arr # ["vanessa", "cas", "dave", "suji"]
puts

# [ERROR]
# arr << "san", "thomas" # not available
# print arr # syntax error, unexpected ',', expecting end-of-input arr << "san", "thomas"
# puts

# .push() add MULTIPLE elements!
arr.push("kristel")
print arr # ["vanessa", "cas", "dave", "suji", "kristel"]
puts

arr.push("san", "thomas")
print arr # ["vanessa", "cas", "dave", "suji", "kristel", "san", "thomas"]
puts

# .pop # no need to speficy anything inside ()
arr = ["vanessa", "cas", "dave", "suji", "kristel", "san", "thomas"]

print arr.pop() # thomas
puts
print arr # ["vanessa", "cas", "dave", "suji", "kristel", "san"]
puts

# What if, pops 2 times?
# pop doesn't need to add parenthesis 
arr = ["vanessa", "cas", "dave", "suji", "kristel", "san", "thomas"]

print arr.pop # thomas
puts
print arr.pop # san
puts
print arr # ["vanessa", "cas", "dave", "suji", "kristel"]
puts

# arr.unshift("chris")
arr = ["vanessa", "cas", "dave", "suji", "kristel", "san", "thomas"]

print arr.unshift("chris") # ["chris", "vanessa", "cas", "dave", "suji", "kristel", "san", "thomas"]
puts
print arr # ["chris", "vanessa", "cas", "dave", "suji", "kristel", "san", "thomas"]
puts

# arr.shift
arr = ["vanessa", "cas", "dave", "suji", "kristel", "san", "thomas"]

print arr.shift # "vanessa"
puts
print arr # ["cas", "dave", "suji", "kristel", "san", "thomas"]
puts


### Personal Question : What is the meaning of "evaluation"? ###
# - "evaluates to the array" means that evaluate expressions and print out the (newly updated) arrray?! 
# - from my understanding, "evaluates to the array" means that,
# - if you print out the method such as "arr.push("kristel")", it will return a newly updated array directly !
# - BUT, only methods that must input a value "" with parenthesis () 
# THEREFORE, <<, array.push(""), array.unshift("") : possible!
#            array.pop, array.shift : impossible

# When a compiler encounters an expression, usually it tries to evaluate it. 
# Evaluation is the process of getting the root meaning of a piece of code.

# When a statement is executed then it comes to the action of evaluation of its expressions. 
# First execution takes place and then evaluation.