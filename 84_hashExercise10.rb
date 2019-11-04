# Hash Exercise 10 : Frequent Letters
# Write a method frequent_letters 
# that takes in a string and 
# returns an array 
# containing the characters that appeared more than twice in the string.


# input type : string 
# output(to return) type : string (appear more than twice) / array

# My solution
def frequent_letters(string)

    # step 2 : new box {}
    counter = Hash.new(0) # # counter = {} with default value '0'
    # step 1 : iteration check
    string.each_char do |char|
    # step 3 : add 1 increment 
    # counter[char] += 1 
        counter[char] += 1
    end
    # return counter
        # {"m"=>1, "i"=>4, "s"=>4, "p"=>2}
        # {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1}

    new = []
    counter.each do |k, v|

        if v > 2
            new << k
        end

    end
    return new

end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts


# Summary I
def frequent_letters(string)

    counter = Hash.new(0) 
    string.each_char do |char|
        counter[char] += 1
    end
    
    new = []
    counter.each do |k, v|
        if v > 2
            new << k
        end
    end
    return new

end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts


# Summary II
def frequent_letters(string)

    counter = Hash.new(0) 
    string.each_char { |char| counter[char] += 1}
    
    new = []
    counter.each do |k, v|
        if v > 2
            new << k
        end
    end
    return new

end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts


# Teacher's solution
def frequent_letters(string)
    count = Hash.new(0)
    string.each_char { |char| count[char] += 1 }

    frequents = []
    count.each do |char, num|
        if num > 2
        frequents << char
        end
    end
    return frequents
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts


# Explanation

def frequent_letters(string)
    count = Hash.new(0) # increment over time
    string.each_char { |char| count[char] += 1 }
    # puts count
    # {"m"=>1, "i"=>4, "s"=>4, "p"=>2}
    # {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1}
    
    frequents = []
    count.each do |k, v|
        if v > 2
            frequents << k
        end
    end 
    return frequents

end 

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts