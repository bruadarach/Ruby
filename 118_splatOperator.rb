##### Using splat to accept additional arguments

# def method(arg_1, arg_2)
#     p arg_1
#     p arg_2
# end

# method("a","b","c","d","e")
# ArgumentError: wrong number of arguments (given 5, expected 2)


def method(arg_1, arg_2, *other_argus)
    p arg_1
    p arg_2
    p other_argus
end

method("a","b","c","d","e")
# "a"
# "b"
# ["c", "d", "e"]


def method(arg_1, arg_2, *other_argus)
    p arg_1
    p arg_2
    p other_argus
end

method("a","b")
# "a"
# "b"
# []


# Use splat at the end of the parameter list to avoide confusion
# Avoid doing this, it is confusing! 
def method(*other_argus, required_arg)
    p other_argus
    p required_arg
end

method("a","b","c")
# ["a", "b"]
# "c"


# Using splat to decompose an array or unpack elements of an array
##### ERROR

# def greet(first_name, last_name)
#     p "Hey " + first_name + ", your last name is " + last_name
    
# end

# names = ["Lucky", "Cas"]
# greet(names)
##### ERROR: wrong number of arguments (given 1, expected 2) (ArgumentError)


def greet(first_name, last_name)
    p "Hey " + first_name + ", your last name is " + last_name
    
end

names = ["Lucky", "Cas"]
greet(*names)
# "Hey Lucky, your last name is Cas"


# * : Let's unpack an array, remove the brackets, and enclose the array!
arr_1 = ["a", "b"]
arr_2 = ["c", "d"]
arr_3 = [*arr_1, *arr_2, "e"]
print arr_3
# ["a", "b", "c", "d", "e"]


# ** : Let's unpack a Hash's Key-Value pairs! 
# ** only works with hashes where keys are symbols!
old_hash = {a: 1, b: 2}
new_hash = {**old_hash, c:3}
print new_hash
# {:a=>1, :b=>2, :c=>3}