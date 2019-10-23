# Array Method & Enumerable Exercise 4 : Format Name
# Write a method format_name 
# that takes in a name string and 
# returns the name properly capitalized.

# My solution
# 1) What data type I want to return ? 
# - input : string(name)
# - output(returned vablue) : string(properly capitalized)
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - all lowercased, first letter capitalized


# My solution 

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

# Step 1 : method check
puts "abc".upcase # => "ABC"
puts "aBc".upcase # => "ABC"
puts "aBc".downcase # => "abc"

str = "How DO yOu DO"
str = str.split(" ")
str.each do |word|
    puts word
end
# How
# DO
# yOu
# DO

str = "How DO yOu DO"
str = str.split(" ")
str.each do |word|
    puts word[0]
end
# H
# D
# y
# D

str = "hello world"
puts str[1..-1] # ello world
puts str[0].upcase + str[1..-1].downcase # Hello world


# Step 2 

# <참고>
# def to_initials1(name)
#     parts = name.split(" ")
#     initials = ""
#     parts.each { |part| initials += part[0] }
#     return initials
# end
# puts to_initials1("Kelvin Bridges")      # => "KB"


def format_name(str)
    str = str.split(" ")
    newname = "" # 이게 []면 에러가 나네 ㅠㅠ 
    # str.each do |word|
    #     newname << word[0].upcase + word[1..-1].downcase
    str.each { |word| newname += word[0].upcase + word[1..-1].downcase + " "}
    return newname
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"



# Teacher's solution

def format_name(str)
    parts = str.split(" ")
    new_parts = []
  
    parts.each do |part|
      new_parts << part[0].upcase + part[1..-1].downcase
    end
  
    return new_parts.join(" ")
  end
  
  puts format_name("chase WILSON") # => "Chase Wilson"
  puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

  
# Step 1 : Split into an array 
def format_name(str)
    parts = str.split(" ")
    print parts
end 

puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
# ["brian", "CrAwFoRd", "scoTT"]


# Step 2 : Make an iteration
part = "SuJI"
puts part[0].upcase # "S" 
puts part[1..-1].downcase # "uji"

def format_name(str)
    parts = str.split(" ")

    parts.each do |part|
        part[0].upcase + part[1..-1].downcase
    end 
end 

puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


# Step 3 : Store new data 
def format_name(str)
    parts = str.split(" ")
    new_parts = []

    parts.each do |part|
        new_parts << part[0].upcase + part[1..-1].downcase
    end 

    return new_parts
end 

print format_name("chase WILSON") # => "Chase Wilson"
puts 
print format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
puts
# ["Chase", "Wilson"]
# ["Brian", "Crawford", "Scott"]


# Step 4 : Make a correct form/type (Array -> String )
def format_name(str)
    parts = str.split(" ")
    new_parts = []

    parts.each do |part|
        new_parts << part[0].upcase + part[1..-1].downcase
    end 

    new_name = new_parts.join(" ")
    return new_name
end 

print format_name("chase WILSON") # => "Chase Wilson"
puts 
print format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
puts
