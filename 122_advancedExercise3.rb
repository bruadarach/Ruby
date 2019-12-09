# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

def only_vowels?(str)

    consonant = "bcdfghjklmnpqrstvwxyz"

    str.each_char do |char|
        if consonant.include?(char)
            return false
        end
    end
    return true
end

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


# Teacher's solution
def only_vowels?(str)
    vowels = "aeiou"

    # all? for array! so convert a string to an array, using split("")
    #str.all? { |char| vowels.include?(char)}
    str.split("").all?  { |char| vowels.include?(char)}
end 

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


##### all? ##### 
# Return true when all elements result in true when passed into the block.
puts [2,4,6].all? { |i| i.even? } #=> true (all elements are even? yes = true, no = false)
# true
puts [2,4,5].all? { |i| i.even? } #=> 5 is not even!
# false

