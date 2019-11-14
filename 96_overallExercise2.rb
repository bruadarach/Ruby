# Overall Exercise 2 : Most Vowels # DIFFICULT!
# Write a method most_vowels 
# that takes in a sentence string and 
# returns the word of the sentence 
# that contains the most vowels.

# input type : sting(sentence)
# output(to return) type : string(word) - most vowels 

# My solution 1

# step 0
sentence = "what"
puts sentence.index("a") # 2


# step 0
sentence = "what"
vowels = "aeiou"
puts vowels.include?(sentence[2]) # true


# Step 1
def most_vowels(sentence)
    sentence = sentence.split(" ")
#     print sentence
#    ["what", "a", "wonderful", "life"]
    
    i = 0
    j = 0
    while i < sentence.length
        # puts sentence[i].length
        # i += 1 
    # end 

    # what
    # a
    # wonderful
    # life

    # 4
    # 1
    # 9
    # 4

        while j < sentence[i].length
            puts sentence[i][j]
            j += 1
        end
        j = 0 # SO IMPORTANT TO INITIALIZE J = 0!!!! 
        i += 1
    end
    # w
    # h
    # a
    # t
    # a
    # w
    # o
    # n
    # d
    # e
    # r
    # f
    # u
    # l
    # l
    # i
    # f
    # e
end 


# Step 2
def most_vowels(sentence)
    sentence = sentence.split(" ")

    vowels = "aeiou"
    count = 0
    total = []

    i = 0
    j = 0
    while i < sentence.length

        while j < sentence[i].length
            if vowels.include?(sentence[i][j])
                count += 1
                j += 1
            else  
                j += 1
            end
        end
        total << count # THIS POSITION IS ALSO IMPORTANT !!!
        j = 0 # SO IMPORTANT TO INITIALIZE J = 0!!!! 
        i += 1
        count = 0
    end
    # return total 
    # [1, 1, 3, 2]
    max = 0
    k = 0
    while k < total.length 
        #print total[k]

        if total[k] > max
            max = k
        end
        k += 1
    end 
    puts sentence[max]
end 

print most_vowels("what a wonderful life") #=> "wonderful"


# My Final Solution
def most_vowels(sentence)
    sentence = sentence.split(" ")

    vowels = "aeiou"
    count = 0
    total = []

    i = 0
    j = 0
    while i < sentence.length

        while j < sentence[i].length
            if vowels.include?(sentence[i][j])
                count += 1
                j += 1
            else  
                j += 1
            end
        end
        total << count 
        j = 0 
        i += 1
        count = 0
    end

    max = 0
    k = 0
    while k < total.length 

        if total[k] > max
            max = k
        end
        k += 1
    end 
    puts sentence[max]
end 

print most_vowels("what a wonderful life") #=> "wonderful"


# Teacher's solution
def most_vowels(sentence)
    counts = {}
  
    sentence.split.each do |word|
      counts[word] = vowel_count(word)
    end
  
    sorted = counts.sort_by { |k,v| v}
    return sorted[-1][0]
  end
  
def vowel_count(word)
    count = 0
    vowels = "aeiou"

    word.each_char do |char|
        if vowels.include?(char)
        count += 1
        end
    end

    return count
end

print most_vowels("what a wonderful life") #=> "wonderful"


# Explanation

# one word string
def vowel_count(word)
    count = 0
    vowels = "aeiou"
    word.each_char do |char|
        if vowels.include?(char)
            count += 1
        end 
    end 
    return count
end 

# puts vowel_count("wonderful") #=> 3


def most_vowels(sentence)
    counts = {}
    words = sentence.split(" ")

    # what about useing a 'hash'?
    # {"what" => 1, "a" => 1, "wonderful" => 3}
    words.each { |word| counts[word] = vowel_count(word) } # def vowel_count(word)
    # counts["what"] = 1
    
    #puts counts
    # {"what"=>1, "a"=>1, "wonderful"=>3, "life"=>2}

    sorted = counts.sort_by { |k, v| v } # maximum value at the end!
    # print sorted 
    # [["what", 1], ["a", 1], ["life", 2], ["wonderful", 3]]

    return sorted[-1][0]

end 


print most_vowels("what a wonderful life") #=> "wonderful"


# Practice
def most_vowels(sentence)
    count = {} # {"what" => 1, "a" => 1, "wonderful" => 3}
    sentence = sentence.split(" ")

    sentence.each { |word| count[word] = vowerl_count(word) }
    # sort_by
    sorted = count.sort_by { |k, v| v }
    return sorted[-1][0]
end 


def vowerl_count(word)
    count = 0
    vowels="aeiou"
    word.each_char do |char|
        if vowels.include?(char)
            count += 1
        end 
    end 
    return count
end 

print most_vowels("what a wonderful life") #=> "wonderful"