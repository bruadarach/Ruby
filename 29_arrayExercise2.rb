# Exercise 2 : Yell
# Write a method yell(words) 
# that takes in an array of words and 
# returns a new array 
# where every word from the original array has an exclamation point after it.

# My solution
# 1) What data type I want to return ? 
# - input : string in array
# - output(returned vablue) : string in array
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes, each string
#                   : remember i = 0 while i < word.length
#                   : IMPORTANT! word[0] =/ word[word.length] | word.length - 1
# Process 0 : what to return? create a new variable and return a new variable
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
def yell(words)
    new_arr = []

    i = 0
    while i < words.length
        new_str = words[i] + "!"
        new_arr << new_str
        i += 1
    end

    return new_arr

end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]


# Teacher's solution
def yell(words)
    yelled_words = [] # Process 0
  
    i = 0 # Process 1
    while i < words.length # Process 1
      new_word = words[i] + '!' # Process 2
      yelled_words << new_word # Process 2
  
      i += 1 # Process 1
    end # Process 1
  
    return yelled_words # Process 0
  end
  
  print yell(["hello", "world"]) # => ["hello!", "world!"]
  puts
  print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]