# Exercise 11 : Select Long Words
# Write a method select_long_words(words) 
# that takes in an array of words and 
# returns a new array 
# containing all of the words of the original array 
# that are longer than 4 characters.

# My solution
# 1) What data type I want to return ? 
# - input : words in array
# - output(returned vablue) : words in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - positive <= num divided
# Process 3 : conditionals/methods 4 char - length

# My solution 
def select_long_words(words)

    new_arr = []

    i = 0
    while i < words.length
        if words[i].length > 4
            new_arr << words[i]
        else 
        end 
        i += 1
    end 
    return new_arr

end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])  

# Teacher's solution
def select_long_words(words)
    long_words = []
  
    i = 0
    while i < words.length
      word = words[i]
      if word.length > 4
        long_words << word
      end
  
      i += 1
    end
  
    return long_words
  end
  
  print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
  puts
  print select_long_words(["keep", "coding"])                               # => ["coding"]
  