# Map Exercise 3 : Yell Sentence
# Write a method yell_sentence 
# that takes in a sentence string and 
# returns a new sentence where every word is yelled. 
# See the examples. Use map to solve this.

# input type : sting(sentene) 
# output(to return) type : string(sentence) - use 'map'

# My solution 
def yell_sentence(sent)
    sent = sent.split(" ")
    new_sentence = sent.map { |word| word.upcase + "!"}
    return new_sentence.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"


# Teacher's solution
def yell_sentence(sent)
    words = sent.split(" ")
    new_words = words.map { |word| word.upcase + "!" }
    return new_words.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"


# Explanation
def yell_sentence(sent)
    words = sent.split(" ")
    puts words
end 

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
# I
# have
# a
# bad
# feeling
# about
# this


# If you don't write sent.split(), it will automatically split
def yell_sentence(sent)
    words = sent.split # what happens, not putting any in () ?
    print words
end 

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
# ["I", "have", "a", "bad", "feeling", "about", "this"]


# Final step
def yell_sentence(sent)
    words = sent.split(" ")
    new_words = words.map { |word| word.upcase + "!" }
    return new_words.join(" ")
end 

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
# ["I", "have", "a", "bad", "feeling", "about", "this"]


# Make it shorter 1 !
def yell_sentence(sent)
    #words = sent.split(" ")
    new_words = sent.split.map { |word| word.upcase + "!" }
    return new_words.join(" ")
end 

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
# ["I", "have", "a", "bad", "feeling", "about", "this"]


# Make it shorter 2 ! = one line value
def yell_sentence(sent)
    #words = sent.split(" ")
    return sent.split.map { |word| word.upcase + "!" }.join(" ")
    #return new_words.join(" ")
end 

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
# ["I", "have", "a", "bad", "feeling", "about", "this"]

