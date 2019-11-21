# Overall Exercise 11: Caesar Cipher [시저 사이퍼 = 시저 (글로쓰인) 암호]
# Write a method caesar_cipher 
# that takes in a string and a number. 
# The method should return a new string 
# where every character of the original is shifted num characters in the alphabet.

# input type : 1 string, 1 number
# output(to return) type : (new) string -> num

# My solution
# Step 1 : alphabet with index

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)

    alphabet = "abcdefghijklmnopqrstuvwxyz"
    alphabet.each_char.with_index do |char, idx|
        puts char
        puts idx
        puts "---"
    end 

end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"


# Step 2 : using map

alphabet = "abcdefghijklmnopqrstuvwxyz"
puts alphabet.index("a") #=> 0
puts alphabet.index("z") #=> 25
puts alphabet.index("Z") #=> nothing


def caesar_cipher(str, num)

    alphabet = "abcdefghijklmnopqrstuvwxyz"
    # alphabet.each_char.with_index do |char, idx|
    #     puts char
    #     puts idx
    #     puts "---"
    # end 

    str = str.split("")
    new = str.map { |ele| alphabet.index(ele) + num }      
    print new

end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"

[1, 16, 16, 12, 5]
[3, 16, 16, 21, 4, 2, 14, 17]
[29, 8, 5, 21, 4]


# Step 3 : using map

alphabet = "abcdefghijklmnopqrstuvwxyz"
puts alphabet.index("a") #=> 0
puts alphabet.index("z") #=> 25
puts alphabet.index("Z") #=> nothing


def caesar_cipher(str, num)

    alphabet = "abcdefghijklmnopqrstuvwxyz"

    str = str.split("")
    new = str.map { |ele| alphabet.index(ele) + num }      
    # print new

    # new_arr = new.map { |char| alphabet[char] }
    # nw_arr.join("")
    # return new_arre

    final = ""
    new.each do |char| 
        if char <= 25
            final << alphabet[char] 
        else   
            final << alphabet[char-26] 
        end
    end 
    return final

end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"


# Teacher's solution
def caesar_cipher(str, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_str = ""
  
    str.each_char do |char|
      old_idx = alphabet.index(char)
      new_idx = old_idx + num
      new_char = alphabet[new_idx % 26]
      new_str += new_char
    end
  
    return new_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"


# Explanation
def caesar_cipher(str, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_str = ""
  
    str.each_char do |char|
      old_idx = alphabet.index(char)
      new_idx = old_idx + num
      new_char = alphabet[new_idx]
      new_str += new_char
    end
  
    return new_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
#puts caesar_cipher("zebra", 4)    #=> "difve"


# Use modulo % 26 !
def caesar_cipher(str, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_str = ""
  
    str.each_char do |char|
      old_idx = alphabet.index(char)
      new_idx = old_idx + num
      new_char = alphabet[new_idx % 26]
      new_str += new_char
    end

    return new_str
end 

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"


# Check the values resulting from modulo !
puts 1 % 26 #=> 1
puts 2 % 26 #=> 2
puts 3 % 26 #=> 3
puts 4 % 26 #=> 4
puts 5 % 26 #=> 5
puts 26 % 26 #=> 0
puts 27 % 26 #=> 1
puts 28 % 26 #=> 2
puts 29 % 26 #=> 3
puts 30 % 26 #=> 4

# 26을 1로 나눈 나머지 
puts 26 % 1 #=> 0
puts 26 % 2 #=> 0
puts 26 % 3 #=> 2
puts 26 % 4 #=> 2
puts 26 % 5 #=> 1
