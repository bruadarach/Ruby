# Overall Exercise 17 : Anagrams
# Write a method anagrams? that takes in two words and 
# returns a boolean indicating whether or not the words are anagrams. 
# Anagrams are words that contain the same characters but not necessarily in the same order. 
# Solve this without using .sort

# input type : string(2 words)
# output(to return) type : boolean (anagram or not)

# My solution
# Step 1
def anagrams?(word1, word2)

    # let's use hash count 
    counter1 = Hash.new(0)

    word1.each_char do |char|
        counter1[char] += 1
    end 
    
    counter2 = Hash.new(0)
    word2.each_char do |char|
        counter2[char] += 1
    end 

    if counter1 == counter2
        return true 
    end 

    return false
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false


# Teacher's solution
def anagrams?(word1, word2)
    return char_count(word1) == char_count(word2)
end
  
def char_count(word)
    count = Hash.new(0)
    word.each_char { |char| count[char] += 1 }
    return count
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false


# Explanation
# Step 1 : count = Hash.new(0)
def anagrams?(word1, word2)

end 

def char_count(word)
    count = Hash.new(0)
    word.each_char { |char| count[char] += 1 }
    return count
end 

puts char_count("cat") #=> {"a"=>1, "c"=>1, "t"=>1}
puts char_count("act") #=> {"a"=>1, "c"=>1, "t"=>1}

hash1 = char_count("cat") #=> {"a"=>1, "c"=>1, "t"=>1}
hash2 = char_count("act") #=> {"a"=>1, "c"=>1, "t"=>1}
puts hash1 == hash2 #=> true 


# Step 2 : char_count(word1) == char_count(word2)
def anagrams?(word1, word2)
    return char_count(word1) == char_count(word2)
end 

def char_count(word)
    count = Hash.new(0)
    word.each_char { |char| count[char] += 1 }
    return count
end 

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false


# Practice
def anagrams?(word1, word2)
    return char_count(word1) == char_count(word2)
end  

def char_count(word)
    count = Hash.new(0)
    word.each_char { |char| count[char] += 1}
    return count 
end 

puts char_count("restful") #=> {"r"=>1, "e"=>1, "s"=>1, "t"=>1, "f"=>1, "u"=>1, "l"=>1}

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
