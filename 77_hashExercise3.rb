# Hash Exercise 3 : Word Lengths
# Write a method word_lengths 
# that takes in a sentence string and 
# returns a hash where every key is a word of the sentence, 
# and its' corresponding value is the length of that word.

# input type : string / sentence
# output(to return) type : a key = a word of sentence / value = length of the word / hash

# how to add a key/value pair?
hash = {}
hash["this"] = 4
puts hash # {"this" => 4}

hash = {}
word = "this"
hash[word] = word.length
puts hash # {"this" => 4}

hash = {}
word = "bootcamp"
hash[word] = word.length
puts hash # {"bootcamp"=>8}


# My solution
def word_lengths(sentence)
    # split into each word
    # count of length - iterate
    # make an hash

    sentence = sentence.split(" ")

    new = {}
    sentence.each do |word|
        new[word] = word.length
    end
    return new

end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}


# My solution updated based on teacher's solution
def word_lengths(sentence)
    # split into each word
    # count of length - iterate
    # make an hash

    sentence = sentence.split(" ")

    new = {}
    sentence.each { |word| new[word] = word.length }
    # do 
    # end
    return new

end
puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}


# Teacher's solution
def word_lengths(sentence)
    words = sentence.split(" ")
    lengths = {}
  
    words.each { |word| lengths[word] = word.length}
  
    return lengths
  end
  
  puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
  puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}