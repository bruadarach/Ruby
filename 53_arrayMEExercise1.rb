# Array Method & Enumerable Exercise 1 : To Initials
# Write a method to_initials 
# that takes in a person's name string and 
# returns a string representing their initials.

# My solution
# 1) What data type I want to return ? 
# - input : string (name)
# - output(returned vablue) : string (initials)
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - div by 4 or 6, not both

# My solution
def to_initials(name)
    name = name.split(" ").join
    initials = ""
    i = 0
    while i < name.length
        char = name[i]
        if char == char.capitalize()
            initials << char
        end
        i += 1
    end
    return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


# Teacher's solution
def to_initials(name)
    parts = name.split(" ")
    print parts
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
# ["Kelvin", "Bridges"]
# ["Michaela", "Yamamoto"]
# ["Mary", "La", "Grange"]


def to_initials1(name)
    parts = name.split(" ")
    initials = ""
    parts.each { |part| initials += part[0] }
    return initials
end

puts to_initials1("Kelvin Bridges")      # => "KB"
puts to_initials1("Michaela Yamamoto")   # => "MY"
puts to_initials1("Mary La Grange")      # => "MLG"