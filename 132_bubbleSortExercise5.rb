# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)

    new = []
    count = 1

    (0..str.length-1).each do |i|
        if str[i] == str[i+1]
            count += 1
        elsif str[i] != str[i+1]
            if count > 1
                new << count.to_s + str[i]
                count = 1
            else 
                new << str[i]
            end
        end
    end
    new.join("")
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"


# Teacher's solution
# Step 1 : problem in the end => count '1'+ char as well 
def compress_str(str)
    compressed = ""

    i = 0
    while i < str.length
        char = str[i] 
        count = 0
        while char == str[i]
            count += 1
            i += 1
        end

        compressed += count.to_s + char
    end
    

    compressed
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"

# "3a2b1c"
# "2x4y2z"
# "5q"
# "1m1i2s1i2s1i2p1i"


# Step 2
def compress_str(str)
    compressed = ""

    i = 0
    while i < str.length
        char = str[i] # make a copy to compare
        count = 0
        while char == str[i]
            count += 1
            i += 1
        end

        # I think after breaking the second while loop, the if statement will start
        if count > 1
            compressed += (count.to_s + char)
        else
            compressed += char
        end
             
    end
    
    compressed
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"


# Practice
def compress_str(str)

    compressed = ""

    i = 0
    while i < str.length
        char = str[i]
        count = 0

        while char == str[i]
            count += 1
            i += 1
        end

        if count > 1
            compressed += count.to_s + char
        else
            compressed += char
        end
    end
    compressed
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"


# Let's try to use new="" & new += str[i]
def compress_str(str)

    new = ""
    count = 1

    (0..str.length-1).each do |i|
        if str[i] == str[i+1]
            count += 1
        elsif str[i] != str[i+1]
            if count > 1
                new += count.to_s + str[i]
                count = 1
            else 
                new += str[i]
            end
        end
    end
    new
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"