# Array Method & Enumerable Exercise 10 : Pig Latin Word
# Write a method pig_latin_word 
# that takes in a word string 
# and translates the word into pig latin.


# My solution
# 1) What data type I want to return ? 
# - input : string(word)
# - output(returned vablue) : string(word)
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
# Step 4 : Make a correct form/type (String -> String)

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

# My solution
def pig_latin_word(word)

    vowels = "aeiou"

    if vowels.include?(word[0])
        return word + "yay"
    end

    if !vowels.include?(word[0])
        # word = word.split("") # convert a string to an array
        
        word.each_char.with_index do |char, idx|
            if vowels.include?(char)
                # puts word[idx..-1]
                # puts word[0...idx]
                return word[idx..-1] + word[0...idx] + "ay" 
            end 
        end
    end
end
            
puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"



### failed trial note ### 
# def is_index(word)

#     index_vowel = []

#     index_vowel << word.index("a")
#     index_vowel << word.index("e")
#     index_vowel << word.index("i")
#     index_vowel << word.index("o")
#     index_vowel << word.index("u")

#     # minimum value in an array
#     i = 0
#     while i < index_vowel.length
#         startnum = index_vowel[i]
#         nextnum = index_vowel[i+1]
#         if startnum < nextnum
#             smallnum = startnum
#         end
#         i += 1
#     end

#     return smallnum
# end

# puts is_index("bnnnnaos")

########## CONCLUSION : .min 메서드가 벨류값이 nil이 있으면 오류가 생김.. 

word1 = "banana"

word = []
# word0 = word1.index("a")
# word2 = word1.index("e")
# word3 = word1.index("i")
# word4 = word1.index("o")
# word5 = word1.index("u")
# # word << word0
# # word << word2
# # word << word3
# # word << word4
# # word << word5

word << word1.index("a")
word << word1.index("e")
word << word1.index("i")
word << word1.index("o")
word << word1.index("u")


print word
# min = word.min # errors occured and failed
# puts min # errors occured and failed 
puts word.max{ |a,b| a.to_i <=> b.to_i }

########## CONCLUSION : 벨류값이 nil이 있어도 max값을 찾아주는 것은 위에 코드 성공, 하지만 min은 실패..


# Prep
word = "apple"
vowels = "aeiou"
puts vowels.include?(word[0]) # true 

word2 = "sapple"
vowels = "aeiou"
puts vowels.include?(word2[0]) # false


word = "apple"
word.each_char do |char|
    puts char
end
# a
# p
# p
# l
# e

word = "banana"
puts word.split("")
print word.split("") 
#["b", "a", "n", "a", "n", "a"]

word = "bananaeious"
puts word.index("a")
puts word.index("e")
puts word.index("i")
puts word.index("o")
puts word.index("u")
# 1
# 6
# 7
# 8
# 9

word = "bananaeious"
index = []
index << word.index("a")
index << word.index("e")
index << word.index("i")
index << word.index("o")
index << word.index("u")
print index
[1, 6, 7, 8, 9]

# minimum value in an array
min = index.min
puts min
# 1


word = "bnanaeious"
index = []
index << word.index("a")
index << word.index("e")
index << word.index("i")
index << word.index("o")
index << word.index("u")
print index
# [2, 5, 6, 7, 8]

# minimum value in an array
min = index.min # This is working as there is no 'nil' value!!
puts min
# 2


word = "trash"
puts word[0...2] # tr
puts word[2..-1] # ash

word1 = []
word2 = []
word1 = word[0...2] # tr
word2 = word[2..-1] # ash
puts word1 + word2 # trash


# Teacher's solution
def pig_latin_word(word)
    vowels = "aeiou"
  
    if vowels.include?(word[0])
       return word + "yay"
    end
  
    word.each_char.with_index do |char, i|
      if vowels.include?(char)
        return word[i..-1] + word[0...i] + "ay"
      end
    end
  end
  
  puts pig_latin_word("apple")   # => "appleyay"
  puts pig_latin_word("eat")     # => "eatyay"
  puts pig_latin_word("banana")  # => "ananabay"
  puts pig_latin_word("trash")   # => "ashtray"


  # Explanation
  def pig_latin_word(word)
    vowels = "aeiou"

    # if the word starts witha  volwer, then add "yay"
    if vowels.include?(word[0])
        return word + "yay"
    end 

    word.each_char.with_index do |char, idx|
        # puts char
        # puts idx
        # t
        # 0
        # r
        # 1
        # a
        # 2
        # s
        # 3
        # h
        # 4

        if vowels.include?(char)
            before_vowel = word[0...idx] # tr
            after_vowel = word[idx..-1] # ash
            return after_vowel + before_vowel + "ay"
        end 
    end 

end 

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"


