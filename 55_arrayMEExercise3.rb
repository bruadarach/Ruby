# Array Method & Enumerable Exercise 3 : Abbreviate Sentence
# Write a method abbreviate_sentence 
# that takes in a sentence string and 
# returns a new sentence 
# where every word longer than 4 characters has all of it's vowels removed.

# My solution
# 1) What data type I want to return ? 
# - input : string(sentence)
# - output(returned vablue) : string(sentence)
# - need a storage(=a new variable) to store a new output/retured value : yes
# - iteration need? : yes
# Process 0 : return / a new variable
# Process 1 : iteration - start / finish / i += 1
# Process 2 : set a range - while line - 0 < num < max
# Process 3 : conditionals/methods - more than 4 char, remove vowels


# My solution 
# Step 1

puts ["follow", "the", "yellow", "brick", "road"].length
# 5

word = "follow the yellow brick road"
puts word[1] # o

print word.split("")
# ["f", "o", "l", "l", "o", "w", " ", "t", "h", "e", " ", "y", "e", "l", "l", "o", "w", " ", "b", "r", "i", "c", "k", " ", "r", "o", "a", "d"]

print word.split(" ")
# ["follow", "the", "yellow", "brick", "road"]

seperate = word.split(" ")
puts seperate.length # 5
puts seperate[1] # the
puts seperate[1].length # 3
puts seperate[1][0] # t


# Step 2

i = 0
j = 0

while i < seperate.length
    puts seperate[i]
    while j <= seperate[i].length
        puts seperate[i][j]
        j += 1
    end 
    j = 0
    i += 1
end
# follow
# f
# o
# l
# l
# o
# w

# the
# t
# h
# e

# yellow
# y
# e
# l
# l
# o
# w

# brick
# b
# r
# i
# c
# k

# road
# r
# o
# a
# d


# Step 3

i = 0
new =""
j = 0
while i < seperate.length
    if seperate[i].length > 4
        while j < seperate[i].length
            if seperate[i][j] !="o" && seperate[i][j] !="e" && seperate[i][j] !="a" && seperate[i][j] !="i" && seperate[i][j] !="u"
                new << seperate[i][j]
            end
            j += 1
        end 
        j = 0
    else  
        new << seperate[i]  
    end 
    i += 1
    puts new
end
# fllw
# fllwthe
# fllwtheyllw
# fllwtheyllwbrck
# fllwtheyllwbrckroad


# Step 4

i = 0
new =""
j = 0
while i < seperate.length
    if seperate[i].length > 4
        while j < seperate[i].length
            if seperate[i][j] !="o" && seperate[i][j] !="e" && seperate[i][j] !="a" && seperate[i][j] !="i" && seperate[i][j] !="u"
                new << seperate[i][j]
            end
            j += 1
        end 
        new << " "
        j = 0
    else  
        new << seperate[i]
        new << " "
    end 
    i += 1
end
puts new
# fllw the yllw brck road 


### My Solution 1 ### 
def abbreviate_sentence(sent)
    seperate = sent.split(" ")
    
    i = 0
    new =""
    j = 0
    while i < seperate.length
        if seperate[i].length > 4
            while j < seperate[i].length
                if seperate[i][j] !="o" && seperate[i][j] !="e" && seperate[i][j] !="a" && seperate[i][j] !="i" && seperate[i][j] !="u"
                    new << seperate[i][j]
                end
                j += 1
            end 
            new << " "
            j = 0
        else  
            new << seperate[i]
            new << " "
        end 
        i += 1
    end
    return new
  end
  
puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"


### My Solution 2 - updated ### 
def abbreviate_sentence(sent)
    seperate = sent.split(" ")
    
    i = 0
    new =""
    j = 0
    vowels="aeiou"
    while i < seperate.length
        if seperate[i].length > 4
            while j < seperate[i].length
                if !vowels.include?(seperate[i][j])
                    new << seperate[i][j]
                end
                j += 1
            end 
            new << " "
            j = 0
        else  
            new << seperate[i]
            new << " "
        end 
        i += 1
    end
    return new
  end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"



### Teacher's solution ###

def abbreviate_sentence(sent)
    words = sent.split(" ")
    new_words = []
  
    words.each do |word|
      if word.length > 4
        new_word = abbreviate_word(word)
        new_words << new_word
      else
        new_words << word
      end
    end
  
    return new_words.join(" ")
  end
  
  def abbreviate_word(word)
    vowels = "aeiou"
    new_word = ""
  
    word.each_char do |char|
      if !vowels.include?(char)
        new_word += char
      end
    end
  
    return new_word
  end
  
puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"


# Practice 1: 함수에 쓰일 메서드 체크 
def abbreviate_sentence(sent)
    words = sent.split(" ") # split method gives you an array
    print words 
end 

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
# ["follow", "the", "yellow", "brick", "road"]
# ["what", "a", "wonderful", "life"]


# Practice 2 : decompose 후, 단어 레벨에서 작동하는 함수를 만들어 보자 
def abbreviate_sentence(sent)
    words = sent.split(" ") # split method gives you an array
    
    new_words = []
    words.each do |word|
        # 만약 단어 길이가 4 이상이면, def abbreviate_word(word)로 보내서 결과값을 new_word 리스트에 넣고
        if word.length > 4 
            new_word = abbreviate_word(word)
            new_words << new_word
        # 만약 단어 길이가 4 미만이면, 그냥 단어 통째로 new_words에 넣어
        else  
            new_words << word
        end 
    end
    new_sent = new_word.join(" ")
end 


# include?
puts "aeiou".include?("e") # true
puts "aeiou".include?("x") # false
puts !"aeiou".include?("x") # true

# 단어 길이가 4 이상인 애들을 이 함수로 보내서, 모음 제거 작업을 해서 다시 위로 돌려보내는 것임
def abbreviate_word(word)
    vowels="aeiou"
    no_vowels = ""

    word.each_char do |char|
        if !vowels.include?(char)
            no_vowels += char
        end 
    end 
    return no_vowels
end 

puts abbreviate_word("bootcamp")


# Practice 3 : 단어 레벨에서 작동하는 함수를 만들어 보자 
def abbreviate_sentence(sent)
    words = sent.split(" ") # split method gives you an array
    
    new_words = []
    words.each do |word|
        # 만약 단어 길이가 4 이상이면, def abbreviate_word(word)로 보내서 결과값을 new_word 리스트에 넣고
        if word.length > 4 
            new_word = abbreviate_word(word)
            new_words << new_word
        # 만약 단어 길이가 4 미만이면, 그냥 단어 통째로 new_words에 넣어
        else  
            new_words << word
        end 
    end
    new_sent = new_words.join(" ")
end 


# include?
puts "aeiou".include?("e") # true
puts "aeiou".include?("x") # false
puts !"aeiou".include?("x") # true

# 단어 길이거 4 이상인 애들을 이 함수로 보내서, 모음 제거 작업을 해서 다시 위로 돌려보내는 것임
def abbreviate_word(word)
    vowels="aeiou"
    no_vowels = ""

    word.each_char do |char|
        if !vowels.include?(char)
            no_vowels += char
        end 
    end 
    return no_vowels
end 

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
