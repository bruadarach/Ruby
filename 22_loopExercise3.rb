# Exercise 3 : Count Vowels 
# Write a method, count_vowels(word), 
# that takes in a string word and 
# returns the number of vowels in the word. 
# Vowels are the letters a, e, i, o, u.

# 1) What data type I want to return ? a number
# - input : string
# - output : number (return this value)
# - need a storage for output : yes => need a new variable to return
# - condition : count a, e, i, o, u. => if statement 
# - iteration need? : yes

    # 1) word iteration => while
    # 2) each word check iteration => i and [i] => need a new variable 'i'
    #                              => remember " i = 0, i < word.lengh "
    # 3) each workd check with conditionals => if statement


# My answer
def count_vowels(word)
  
    count = 0
    
    i = 0
    while i < word.length
      if word[i] == 'a' || word[i] == 'e' || word[i] == 'i' || word[i] == 'o' || word[i] == 'u'
        count += 1
      end
      
      i += 1
    end
    return count
end
  
puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2


# Teacher's answer
def count_vowels(word)
    num_vowels = 0
  
    i = 0
    while i < word.length
      char = word[i]
  
      if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
        num_vowels += 1
      end
  
      i += 1
    end
  
    return num_vowels
end
  
puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2
