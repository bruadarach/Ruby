# (1) array/string.reverse, evaluates to a new reverse version of the array or string
# (2) array/string.reverse! reverses an array/string in place



# Let's practice with Numbers! 


# (1) array/string.reverse, evaluates to a new reverse version of the array or string
# - NO MODIFICATION: this way doesn't modify the existing variables
# - so, just evaluation itself
arr = [1, 2, 3, 4]
print arr # [1, 2, 3, 4]
puts
arr.reverse # it does nothing, not saving nor printing out new variables
print arr # [1, 2, 3, 4]
puts

# (2) array/string.reverse! reverses an array/string in place
# - YES MODIFICATION
arr = [1, 2, 3, 4]
print arr.reverse # [4, 3, 2, 1]
puts
print arr # [1, 2, 3, 4]

# (1) then, how to make it modified and manifulated? 
arr = [1, 2, 3, 4]
print arr # [1, 2, 3, 4]
puts
arr.reverse! # it does save and print out new variables
print arr # [4, 3, 2, 1]
puts


# Let's practice with Strings! 


str = "hello"
puts str.reverse # olleh
puts str # hello

str = "lucky"
str.reverse!
puts str.reverse! # ykcul
puts str # ykcul

# e.g) palidrome
def is_palidrome(word)
    return word == word.reverse
end
puts is_palidrome("madam") # true
puts is_palidrome("hello") # false


