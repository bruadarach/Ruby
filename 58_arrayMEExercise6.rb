# Array Method & Enumerable Exercise 6 : Is Valid Email
# Write a method is_valid_email 
# that takes in a string and 
# returns a boolean 
# indicating whether or not it is a valid email address.

# My solution
# 1) What data type I want to return ? 
# - input : string(email)
# - output(returned vablue) : boolean
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
# Step 4 : Make a correct form/type (Array -> String )

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# condition 1 - contains exactly one @ symbol : include?
# condition 2 - contains only lowercase alphabetic letters before the @ : downcase @
# condition 3- contains exactly one . after the @ : @ . include?

def is_valid_email(str)
    # check 1: include? 1 @
    # check 2: include? 1 .
    # check 3: split into an array to check(if) downcase, . after @

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false


str = "abc@xy.z"
puts str.include?("@") # true

str = "abc@@@xy.z"
puts str.include?("@") # true

str = "abc@@@@@xy.z"
count=""
str.each_char do |char|
    if char == "@"
        count << char
    end
end
puts count.length
    

# Step 1: check include? @
def is_valid_email(str)
    if is_onlyone(str) != 1 
        return false
    end
    return true
end

def is_onlyone(mail)
    count=""
    mail.each_char do |char|
        if char == "@"
            count << char
        end
    end
    return count.length
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false

# true
# true
# false
# true
# false
# true


# Step 2: check include? @ + .
def is_valid_email(str)
    if is_onlyone(str) == 1 && is_onlyonedot(str) == 1
        return true
    else  
        return false  
    end
end

def is_onlyone(mail)
    count=""
    mail.each_char do |char|
        if char == "@"
            count << char
        end
    end
    return count.length
end

def is_onlyonedot(mail)
    count=""
    mail.each_char do |char|
        if char == "."
            count << char
        end
    end
    return count.length
end

puts is_onlyonedot("wlw.wl") # 1 
puts is_onlyonedot("wlwwl") # 0

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
# true
# true
# false
# true
# false
# false


# check 3: split into an array to check(if) downcase, . after @
def is_valid_email(str)
    if is_onlyone(str) == 1 && is_onlyonedot(str) == 1 && is_downcase(str) == true
        return true 
    else  
        return false  
    end
end

def is_onlyone(mail)
    count=""
    mail.each_char do |char|
        if char == "@"
            count << char
        end
    end
    return count.length
end

def is_onlyonedot(mail)
    count=""
    mail.each_char do |char|
        if char == "."
            count << char
        end
    end
    return count.length
end

def is_downcase(str)
    str = str.to_s
    str = str.split("@")
    
    number1 = "1"
    number2 = "2"
    number3 = "3"
    number4 = "4"
    number5 = "5"
    number6 = "6"
    number7 = "7"
    number8 = "8"
    number9 = "9"
    number0 = "0"
    
    str.each do |part|
        if part[0] == part[0].downcase  && 
            part.include?(number1) == false &&
            part.include?(number2) == false &&
            part.include?(number3) == false &&
            part.include?(number4) == false &&
            part.include?(number5) == false &&
            part.include?(number6) == false &&
            part.include?(number7) == false &&
            part.include?(number8) == false &&
            part.include?(number9) == false &&
            part.include?(number0) == false 
            return true
        else  
            return false 
        end
    end
end 

puts "---"
puts is_downcase("jdoe42@gmail.com")
puts is_downcase("jdoe4@gmail.com")
puts is_downcase("jdoe@gmail4.com")
puts is_downcase("jdoe@gmail.com")
puts "---"
# ---
# false
# false
# true
# true
# ---

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false


# My final solution
def is_valid_email(str)
    if is_onlyone(str) == 1 && is_onlyonedot(str) == 1 && is_downcase(str) == true
        return true 
    else  
        return false  
    end
end

def is_onlyone(mail)
    count=""
    mail.each_char do |char|
        if char == "@"
            count << char
        end
    end
    return count.length
end

def is_onlyonedot(mail)
    count=""
    mail.each_char do |char|
        if char == "."
            count << char
        end
    end
    return count.length
end

def is_downcase(str)
    str = str.to_s
    str = str.split("@")
    # puts str[0]
    # puts str[1]
    
    number1 = "1"
    number2 = "2"
    number3 = "3"
    number4 = "4"
    number5 = "5"
    number6 = "6"
    number7 = "7"
    number8 = "8"
    number9 = "9"
    number0 = "0"

    if str[0] == str[0].downcase && str[1].include?(".") &&
        str[0].include?(number1) != true &&
        str[0].include?(number2) != true &&
        str[0].include?(number3) != true &&
        str[0].include?(number4) != true &&
        str[0].include?(number5) != true &&
        str[0].include?(number6) != true &&
        str[0].include?(number7) != true &&
        str[0].include?(number8) != true &&
        str[0].include?(number9) != true &&
        str[0].include?(number0) != true 
        return true
    else  
        return false 
    end
end 

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false


# Teacher's solution
def is_valid_email(str)
    parts = str.split("@")
  
    if parts.length != 2
      return false
    end
  
    first = parts[0]
    second = parts[1]
    alpha = "abcdefghijklmnopqrstuvwxyz"
  
    first.each_char do |char|
      if !alpha.include?(char)
        return false
      end
    end
  
    if second.split('.').length == 2
      return true
    else
      return false
    end
  end
  
  puts is_valid_email("abc@xy.z")         # => true
  puts is_valid_email("jdoe@gmail.com")   # => true
  puts is_valid_email("jdoe@g@mail.com")  # => false
  puts is_valid_email("jdoe42@gmail.com") # => false
  puts is_valid_email("jdoegmail.com")    # => false
  puts is_valid_email("az@email")         # => false


# For simplicity, we'll consider an email valid when it satisfies all of the following:
# condition 1 - contains exactly one @ symbol
# condition 2 - contains only lowercase alphabetic letters before the @ 
# condition 3- contains exactly one . after the @ 

# Step 1
def is_valid_email(str)
    parts = str.split("@")
    print parts
    puts

end     

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false

# ["abc", "xy.z"]

# ["jdoe", "gmail.com"]

# ["jdoe", "g", "mail.com"]

# ["jdoe42", "gmail.com"]

# ["jdoegmail.com"]

# ["az", "email"]


# Step 2
# condition 1 - contains exactly one @ symbol
def is_valid_email(str)
    parts = str.split("@")

    if parts.length != 2
        return false 
    end 
 
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false


# Step 3
# condition 2 - contains only lowercase alphabetic letters before the @ 
def is_valid_email(str)
    parts = str.split("@")

    if parts.length != 2
        return false 
    end 

    left = parts[0]
    right = parts[1]
    alpha = "abcdefghijklmnopqrstuvwxyz"

    left.each_char do |char|
        if !alpha.include?(char)
            return false 
        end
    end

    if right.split(".").length == 2
        return true
    else  
        return false 
    end 
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false


# include? .each_char 
alpha = "abcdefghijklmnopqrstuvwxyz"
char = "a"
puts alpha.include?(char) # true

char = "1"
puts alpha.include?(char) # false

char = "seoul"
puts alpha.include?(char) # false

# Therefore, ".each_char" should be used.

