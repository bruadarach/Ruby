# Overall Exercise 12 : Vowel Cipher
# Write a method vowel_cipher 
# that takes in a string and 
# returns a new string where every vowel becomes the next vowel in the alphabet.

# input type : 1 string
# output(to return) type : (new) string (vower -> next vowel)

# My solution
# Step 1 : alphabet with  
def vowel_cipher(string)
    
    vowels = "aeiou"

    new = ""

    string.each_char do |char|
        if vowels.include?(char)
            # print vowels.index(char)
            mode = vowels.index(char)
            new << vowels[mode - 4]
        else    
            new << char
        end 
     
    end 

    return new 
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap


puts 0 % 5 #=> 0
puts 1 % 5 #=> 1
puts 2 % 5 #=> 2
puts 3 % 5 #=> 3
puts 4 % 5 #=> 4
puts 5 % 5 #=> 0

puts 6 % 5 #=> 1
puts 7 % 5 #=> 2


# Step 2 : 
def vowel_cipher(string)
    
    vowels = "aeiou"
    new = ""

    string.each_char do |char|
        if vowels.include?(char)
            #mode = vowels.index(char)
            new << vowels[vowels.index(char) - 4]
        else    
            new << char
        end 
    end 

    return new 
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap


# Teacher's solution 1
def vowel_cipher(string)
    vowels = "aeiou"
  
    new_chars = string.split("").map do |char|
      if vowels.include?(char)
        old_idx = vowels.index(char)
        new_idx = old_idx + 1
        vowels[new_idx % vowels.length]
      else
        char
      end
    end
  
    return new_chars.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap


# Explanation
# Step 1
def vowel_cipher(string)
    vowels = "aeiou"
    print string.split("")
end 
puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

# ["b", "o", "o", "t", "c", "a", "m", "p"]
# ["p", "a", "p", "e", "r", " ", "c", "u", "p"]


# Step 2
def vowel_cipher(string)
    vowels = "aeiou"
    string.split("").map do |char|
        if vowels.include?(char)
            old_idx = vowels.index(char)
            new_idx = (old_idx + 1) % vowels.length # 5
            vowels[new_idx] # 2nd example! u -> a ! 
        else   
            char 
        end 
    end 
end 
puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap


# Step 3 : assign 'new_chars'
def vowel_cipher(string)
    vowels = "aeiou"
    new_chars = string.split("").map do |char|
        if vowels.include?(char)
            old_idx = vowels.index(char)
            new_idx = (old_idx + 1) % vowels.length # 5
            vowels[new_idx] # 2nd example! u -> a ! 
        else   
            char 
        end 
    end 
    print new_chars
end 
puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

# ["b", "u", "u", "t", "c", "e", "m", "p"]
# ["p", "e", "p", "i", "r", " ", "c", "a", "p"]


# Step 3 : join 'new_chars'
def vowel_cipher(string)
    vowels = "aeiou"
    new_chars = string.split("").map do |char|
        if vowels.include?(char)
            old_idx = vowels.index(char)
            new_idx = (old_idx + 1) % vowels.length # 5
            vowels[new_idx] # 2nd example! u -> a ! 
        else   
            char 
        end 
    end 
    return new_chars.join("")
end 
puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap


# Teacher's solution 2 : use 'hash'!
def vowel_cipher(string)
    change = {
        "a"=>"e",
        "e"=>"i",
        "i"=> "o",
        "o" => "u",
        "u"=> "a"
    }

    vowels= "aeiou"

    new_arr = string.split("").map do |char|
        if vowels.include?(char)
            change[char]
        else  
            char 
        end 
    end 
    return new_arr.join("")
end 

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap