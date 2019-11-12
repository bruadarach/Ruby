# Map Exercise 5 : O Words
# Write a method o_words 
# that takes in a sentence string and 
# returns an array of the words 
# that contain an "o". Use select in your solution!

# input type : sting(sentence) / array
# output(to return) type : include? ('o') / new array - use 'select'

# My solution 
def o_words(sentence)
    sentence = sentence.split(" ")
    return sentence.select { |ele| ele.include?("o") }
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts


# My solution updated based on teacher's solution
def o_words(sentence)
    #sentence = sentence.split(" ")
    return sentence.split.select { |ele| ele.include?("o") }
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts


# Teacher's solution
def o_words(sentence)
    return sentence.split.select { |word| word.include?("o") }
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts


# Explanation
# 'select' only works for an array!
def o_words(sentence)
    return sentence.split.select { |word| word.include?("o")}
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts
