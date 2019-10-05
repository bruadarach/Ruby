# Exercise 6 : Is Palindrome
# Write a method is_palindrome(word) 
# that takes in a string word and returns the true 
# if the word is a palindrome, false otherwise. 
# A palindrome is a word that is spelled the same forwards and backwards.

# My solution
# 1) What data type I want to return ? 
# - input : string
# - output(returned vablue) : boolearn (true/false)
# - need a storage(=a new variable) to store a new output/retured value : yes 
# - iteration need? : yes, each character of a word
#                   : remember i = 0 while i < word.length
#                   : IMPORTANT! word[0] =/ word[word.length] | word.length - 1
# Process 1 : Making an iteration
                    # 1. set a start position 0 | i = 0
                    # 2. set a stop number | while i < word.length
                    # 3. check each character | word[i]
                    # 4. increment for iteration i += 1
# - condition : if statement / order comparision
# Process 2 : Condition / Method
                    # a new variables? need a variable to store a newly calculated value? yes
                    # return the new variable(=return value)


# My solution
# Process 1 : Making an iteration
def is_palindrome(word)

    i = 0
    while i < word.length
        puts word[i]
        i += 1
    end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false


# Process 2 : Conditionals / if word = reversed word, true
def is_palindrome(word)

    reversed = ""
    i = 0
    while i < word.length
        char = word[i]
        reversed = char + reversed
        i += 1
    end

    if reversed == word    # you can just return!!!!!
        return true
    else 
        return false   
    end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false


# Teacher's solution
def is_palindrome(word)
    reversed = ""
  
    i = 0
    while i < word.length
      char = word[i]
      reversed = char + reversed
  
      i += 1
    end
  
    return reversed == word
  end
  
  puts is_palindrome("racecar")  # => true
  puts is_palindrome("kayak")    # => true
  puts is_palindrome("bootcamp") # => false