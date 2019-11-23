# Overall Exercise 13 : Double Letter Count
# Write a method that takes in a string and 
# returns the number of times that the same letter repeats twice in a row.

# input type : 1 string
# output(to return) type : number (of times that string repeated twice)

# My solution
# Step 1
def double_letter_count(string)
    print string.split(" ")
end

puts double_letter_count("the jeep rolled down the hill") #=> 3 # ee, ll, ll
puts double_letter_count("bootcamp") #=> 1 # oo

# ["the", "jeep", "rolled", "down", "the", "hill"]
# ["bootcamp"]


# Step 2
def double_letter_count(string)

    count = 0 
    string.split(" ").each do |word|
        #puts word
        word.each_char.with_index do |char, idx|
            # puts "======"
            # puts word[idx]
            # puts word[idx+1]
            now_char = word[idx]
            next_char = word[idx+1]
            if now_char == next_char 
                count += 1 
            end 
        end 
    end 
    return count
  
end

puts double_letter_count("the jeep rolled down the hill") #=> 3 # ee, ll, ll
puts double_letter_count("bootcamp") #=> 1 # oo


# Step 3 : if triple? only twice? use Hash , count = 2 only! 
def double_letter_count(string)

    counter = Hash.new(0)
    string.split(" ").each do |word|
        word.each_char do |char|
            counter[char] += 1
        end 
    end
    puts counter
  
end

puts double_letter_count("the jeeep rolled down the hilll") #=> 1 # ll
puts double_letter_count("bootcamp") #=> 1 # oo

# {"t"=>2, "h"=>3, "e"=>6, "j"=>1, "p"=>1, "r"=>1, "o"=>2, "l"=>5, "d"=>2, "w"=>1, "n"=>1, "i"=>1}
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1}


# Step 4 : if triple? only twice? use Hash , count = 2 only! 
def double_letter_count(string)

    counter = Hash.new(0)
    string.split(" ").each do |word|
        word.each_char do |char|
            counter[char] += 1
        end 
    end

    # 해쉬 value 2인 것의 키값을 어떻게 불러내지? 
    # hash enumerable! .each do |k , v |
    counter.each do |k, v|
        if v == 2
            puts k 
        end 
    end

  
end

puts double_letter_count("the jeeep rolled down the hilll") #=> 1 # ll
puts double_letter_count("bootcamp") #=> 1 # oo
# t
# o
# d
# {"t"=>2, "h"=>3, "e"=>6, "j"=>1, "p"=>1, "r"=>1, "o"=>2, "l"=>5, "d"=>2, "w"=>1, "n"=>1, "i"=>1}
# o
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1}


# Step 5 : if triple? only twice? use Hash , count = 2 only! 
def double_letter_count(string)

    count = 0

    string.split(" ").each do |word|
        word.each_char.with_index do |char, idx|
            if word[idx] == word[idx+1]
                if word[idx] != word[idx+2]
                    if word[idx] != word[idx-1]
                        count += 1
                    end
                end 
            end 
        end 
    end
    return count
end 
puts double_letter_count("the jeeep rolled down the hilllll") #=> 1 # ll
puts double_letter_count("bootcamp") #=> 1 # oo


# Step 6 : if triple? only twice? use Hash , count = 2 only! NO just check 4 indice
def double_letter_count(string)

    count = 0

    string.split(" ").each do |word|
        word.each_char.with_index do |char, idx|
            if word[idx] == word[idx+1] && word[idx] != word[idx+2] && word[idx] != word[idx-1]
                count += 1 
            end 
        end 
    end
    return count
end 
puts double_letter_count("the jeeep rolled down the hill") #=> 1 # ll
puts double_letter_count("bootcamp") #=> 1 # oo


# Teacher's solution
def double_letter_count(string)
    count = 0
  
    string.each_char.with_index do |char, i|
      if string[i] == string[i + 1]
        count += 1
      end
    end
  
    return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1


# Explanation
def double_letter_count(string)
    count = 0 

    string.each_char.with_index do |char, idx|
        if string[idx] == string[idx+1]
            count += 1
        end
    end 

    return count
end 
puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1


# Practice
def double_letter_count(string)
    count = 0 

    string.each_char.with_index do |char, idx|
        if string[idx] == string[idx+1]
            count += 1 
        end 
    end
    return count
end 
puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
