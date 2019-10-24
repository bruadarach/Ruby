# Array Method & Enumerable Exercise 8 : Reverse Words
# Write a method reverse_words 
# that takes in a sentence string and 
# returns the sentence with the order of the characters 
# in each word reversed. 
# Note that we need to reverse the order of characters in the words, 
# do not reverse the order of words in the sentence.

# My solution
# 1) What data type I want to return ? 
# - input : string (sentence)
# - output(returned vablue) : string (sentence , characters reversed)
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# - How to return a correct form/type?
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - if valid name or not 


# My solution 

# Step 1 : Split into an array 
# Step 2 : Make an iteration
# Step 3 : Store new data 
# Step 4 : Make a correct form/type (String -> String)

def reverse_words(sent)
    sent = sent.split(" ")
    new=[]

    sent.each do |char|
        new << char.reverse
    end
    return new.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

str = 'keep coding'
puts str.reverse
# gnidoc peek

# idea : split needed 


# Teacher's solution
def reverse_words(sent)
    words = sent.split(" ")
    new_words = []
    words.each { |word| new_words << word.reverse }
    new_sent = new_words.join(" ")
    return new_sent
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'


# Explanation
def reverse_words(sent)
    words = sent.split(" ")
    new_words = []

    words.each { |word| new_words <<  word.reverse } # oneline
    new_sent = new_words.join(" ")
    return new_sent
end 

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
