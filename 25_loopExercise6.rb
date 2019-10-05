# Exercise 6 : Reverse
# Write a method reverse(word) 
# that takes in a string word and 
# returns the word with its letters in reverse order.

# My solution
# 1) What data type I want to return ? a number
# - input : string
# - output(returned vablue) : string
# - need a storage(=a new variable) to store a new output/retured value : yes 
# - iteration need? : yes, each character of a word
#                   : remember i = 0 while i < word.length
#                   : IMPORTANT! word[0] =/ word[word.length] | word.length - 1
# Process 1 : Making an iteration
                    # 1. set a start position 0 | i = 0
                    # 2. set a stop number | while i < word.length
                    # 3. check each character | word[i]
                    # 4. increment for iteration i += 1
# - condition : multiple all numbers 
# Process 2 : Condition / Method
                    # a new variables? need a variable to store a newly calculated value? yes
                    # return the new variable(=return value)


# My solution
# Process 1 : Making an iteration
def reverse(word)

  i = 0
  while i < word.length
    puts word[i] 
    i += 1
  end
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"

# Process 2 : Reverse means -1 or from the end position
def reverse(word)

  i = word.length
  while i >= 0
    puts word[i] 
    i -= 1
  end
  return 
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"

# Process 3 : Create a new variable to store reversed strings 
def reverse(word)
  reversed = ""
  i = word.length - 1 # IMPORTANT!!!!!!!!!!
  while i >= 0
    char = word[i]
    reversed += char # reversed = reversed + char
    i -= 1
  end
  return reversed
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"


# Teacher's solution
def reverse(word)
  reversed = ""

  i = 0
  while i < word.length
    char = word[i]
    reversed = char + reversed # CHECK THIS OUT! How to reverse with operator

    i += 1
  end

  return reversed
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"


