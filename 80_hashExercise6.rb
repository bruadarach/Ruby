# Hash Exercise 6 : Ae Count
# Write a method ae_count 
# that takes in a string and 
# returns a hash containing the number of a's and e's in the string. 
# Assume the string contains only lowercase characters.

# input type : string
# output(to return) type : number (a's, e's)

# My solution
def ae_count(str)
    str = str.downcase

    counter = Hash.new(0) # counter = {} with default value '0'
    str.each_char do |char|
        counter[char] += 1 # counter[key] = value   / adding a key/value pair into the hash
    end
    return {"a" => counter["a"], "e" => counter["e"]}

end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}


def ae_count(str)
    str = str.downcase

    counter = Hash.new(0)
    str.each_char { |char| counter[char] += 1 }
    return {"a" => counter["a"], "e" => counter["e"]}

end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}


# Teacher's solution
def ae_count(str)
count = {"a"=>0, "e"=>0}

str.each_char do |char|
    if (char == "a" || char == "e")
    count[char] += 1
    end
end

return count
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}


# Explanation
def ae_count(str)
    # initialize 0
    count = {"a" => 0, "e" => 0}

    # how to increase 0?
    str.each_char do |char|
        if (char == "a" || char == "e")
            count[char] += 1
        end
    end

    return count
end 

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}
