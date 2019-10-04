# Exercise 2 : Count A
# Write a method count_a(word) 
# that takes in a string word and 
# returns the number of a's in the word. 
# The method should count both lowercase (a) and uppercase (A)

# 1) What data type I want to return ? a number
# - input : string
# - output : number (return this value)
# - need a storage for output : yes => need a new variable to return
# - condition : count both lowercase a & uppercase A => if statement & (both) boolean
# - iteration need? : yes

    # 1) word iteration => while
    # 2) each word check iteration => i and [i] => need a new variable 'i'
    #                              => remember " i = 0, i < word.lengh "
    # 3) each workd check with conditionals => if statement

# My Answer
def count_a(word)

    count = 0
    i = 0
    while i < word.length 
        if word[i] == 'a' || word[i] == 'A'
            count += 1
        end
        
        i += 1
    end
    return count
end
  
puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3


# Teacher's answer 
def count_a(word)
    count = 0
  
    i = 0
    while i < word.length
        char = word[i]
        
        if char == "a" || char == "A"
            count += 1
        end
        
        i += 1
    end 
  
    return count
end
  
puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3