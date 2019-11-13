# Overall Exercise 1 : Last Index

##### IMPORTANT : Return Last Index => Iterate From Last to Beginning!!!

# Write a method last_index 
# that takes in a string and a character. 
# The method should return the last index where the character can be found in the string.

# input type : sting(a word / a char )
# output(to return) type : num(last index wehre a char is found)

# My solution 1

def last_index(str, char)

    new = []
    str.each_char.with_index do |ele, idx|
        if ele == char
            new << idx 
        end 
    end 
    return new.pop
     
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# My solution 2
def last_index(str, char)

    new = []
    str.each_char.with_index do |ele, idx|
        if ele.include?(char)
            new << idx
        end 
    end
    return new.pop
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# My solution 3
def last_index(str, char)

    final=[]
    str = str.split("")
    str.map.with_index do |ele, idx|
        if ele == char 
            final << idx
        end
    end 
    return final[-1]
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# My solution 4 - use 'reverse' / updated based on teacher's idea from end to beginning!s
def last_index(str, char)

    str = str.split("").reverse
    #print str
    str.map.with_index do |ele, idx|
        if ele == char 
            return str.length - 1 - idx
        end
    end 
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# Teacher's solution
def last_index(str, char)
    i = str.length - 1
    while i >= 0
      if str[i] == char
        return i
      end
      i -= 1
    end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# Explanation : Iterating the end to the beginning of the string !! 

# Step 1 : from end to beginning
def last_index(str, char)
    i = str.length - 1 
    while i >= 0
        puts str[i]
        i -= 1
    end
end 

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# Step 2 : condition
def last_index(str, char)
    i = str.length - 1 
    while i >= 0
        if str[i] == char
            return i
        end 
        i -= 1
    end
end 

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7