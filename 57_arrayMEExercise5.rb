# Array Method & Enumerable Exercise 5 : Is Valid Name
# Write a method is_valid_name 
# that takes in a string and 
# returns a boolean 
# indicating whether or not it is a valid name.

# My solution
# 1) What data type I want to return ? 
# - input : string(name)
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

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces -> include?
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"


# Step 1 : Split into an array 
def is_valid_name(str)
    str = str.split(" ")
    print str
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
# ["Kush", "Patel"]
# ["Daniel"]
# ["Robert", "Downey", "Jr"]
# ["ROBERT", "DOWNEY", "JR"]


# Step 2 : Make an iteration
def is_valid_name(str)
    str = str.split(" ")
    print str.length
        
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

# 2
# 1
# 3
# 3

def is_valid_name(str)
    str = str.split(" ")
    if str.length > 1 
        return true
    else  
        return false 
    end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
# true
# false
# true
# true

word="Jr"
puts word[1..-1] # r

def is_valid_name(str)
    str = str.split(" ")
    if str.length > 1 

        str.each do |word|        
            if word != word[0].upcase + word[1..-1].downcase
                return false
            else
                return true
            end
        end
    
    else  
        return false 
    end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

# My solution - a slightly different version based on teacher's solution
def is_valid_name(str)
    str = str.split(" ")
    if str.length > 1 

        str.each do |word|        
            if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
                return true
            else
                return false
            end
        end
    
    else  
        return false 
    end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false


def is_valid_name(str)
    parts = str.split(" ")

    if parts.length < 2
        return false 
    end
    
    parts.each do |part|
        if part[0] == part[0].upcase && part[1..-1] == part[1..-1].downcase 
            return true 
        else  
            return false  
        end 
    end 
    return false
end 
puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false


# Teacher's solution 
def is_valid_name(str)
    parts = str.split(" ")
    if parts.length < 2
      return false
    end
  
    parts.each do |part|
      if !is_capitalized(part)
        return false
      end
    end
  
    return true
  end
  
  def is_capitalized(word)
    if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
      return true
    else
      return false
    end
end
  
puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false


# Step 1 : Split into an array 
def is_valid_name(str)
    parts = str.split(" ")
    print parts
    puts
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
# ["Kush", "Patel"]

# ["Daniel"]

# Step 2 : Check condition 1 (length) 
def is_valid_name(str)
    parts = str.split(" ")
    
    # check 1
    if parts.length < 2
        return false
    end 

    # check 2
    if parts.length >= 2
        return true
    end

end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false


# Step 3 : Check condition 2 (capitalization) -> need an iteration
# Step 4 : Make an iteration
# Step 5 : Decompose the condition 2 and make a new def
def is_valid_name(str)
    parts = str.split(" ")
    
    # length check
    if parts.length < 2
        return false
    end 

    # capitalization check
    
    parts.each do |part|
        # 3. put the new def here
        if !is_capitalized(part) # 여기는 part여야 작동 가능. word면 오류 
            return false
        end
        
        # YOU SHOULD AVOID THIS SCENARIO 
        # if is_capitalized(word)
        #     return true
        # end
    end 
    # 4. position of return true! 
    return true
end

# 2. def 
def is_capitalized(word) # 여기가 word 여도 작동 가능. part여도 가능 
    if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
        return true
    else  
        return false  
    end
end 

# 1. output : what to return / what is the type of output? 
puts is_capitalized("Bootcamp") # true
puts is_capitalized("BooTcamp") # false 

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false