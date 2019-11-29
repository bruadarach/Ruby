# Overall Exercise 18 : Consonant Cancel
# Write a method consonant_cancel t
# hat takes in a sentence and 
# returns a new sentence where every word begins with it's first vowel.

# input type : string(a sentence)
# output(to return) type : string(a new sentence)

# My solution
# Step 1
def consonant_cancel(sentence)
    new = []
    consonant = "bcdfghjklmnpqrstvwxyz"

    sentence.split(" ").each do |word|
        word.each_char.with_index do |char, idx|
            if !(consonant.include?(char))
                new << word[idx..-1]
                break
            end 
        end 
    end 
    new = new.join(" ")
    return new
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"


# Teacher's solution
def consonant_cancel(sentence)
    words = sentence.split
    new_words = words.map { |word| remove_first_consonant(word) }
    return new_words.join(" ")
end

def remove_first_consonant(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, i|
      if vowels.include?(char)
        return word[i..-1]
      end
    end
end


puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"


# Explanation
# Step 1
def consonant_cancel(sentence)

end 

def remove_starting_consonants(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, idx|
        if vowels.include?(char)
            return word[idx..-1] # find the first vowel, and return till -1
        end
    end
end 

puts "writing"[2..-1] #=> "iting"
remove_starting_consonants("writing") #=> "iting"


# Step 2
def consonant_cancel(sentence)
    words = sentence.split(" ")
    new_words = words.map {|word|remove_starting_consonants(word) }
    return new_words.join(" ")

end 

def remove_starting_consonants(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, idx|
        if vowels.include?(char)
            return word[idx..-1] # find the first vowel, and return till -1
        end
    end
end 

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"


# Practice
def remove_first_consonant(sentence)
    words = sentence.split(" ")
    new_words = words.map { |word| remove_first_consonant(word) }
    return new_words.join(" ")
end

def remove_starting_consonants(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, idx|
        if vowels.include?(char)
            return word[idx..-1]
        end
    end
end

puts remove_starting_consonants("down") #=> "own"

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"


