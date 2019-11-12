# Map Exercise 4 : Whisper Words
# Write a method whisper_words 
# that takes in an array of words and 
# returns a new array 
# containing a whispered version of each word. See the examples. 
# Solve this using map :).

# input type : sting(word) / array
# output(to return) type : sting(word).downcase + "..." / new array

# My solution 
def whisper_words(words)
    return words.map { |ele| ele.downcase + "..."}
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts


# Teacher's solution
def whisper_words(words)
    words.map { |word| word.downcase + "..." }
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts


# Explanation
# What is 'map' the best to use here? Map is good to modify every elements, and give back a new array
def whisper_words(words)
    words.map { |word| word.downcase + "..."}
end 

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts