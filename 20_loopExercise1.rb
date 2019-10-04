# Exercise 1 : Count E
# Write a method count_e(word) 
# that takes in a string word and returns the number of e's in the word

# Teacher's answer
# 1) What data type I want to return ? a number
# 2) Ok, then I need to store the number. 
#   - set "count = 0"
# 3) (first time question) is this current character 'e'? 
#   - if it is, increment 1 in count
#   - if it is not, go to the next character
# 4) I have to look through all characters? use a loop to iterate!
# 5) Each time We have to ask if it is 'e' or not? iteration with if statement!
# 6) my final answer(count = 3) is 3, then return the 'count'. 

def count_e(word)
    count = 0
  
    i = 0
    while i < word.length
      char = word[i]
  
      if char == "e"
        count += 1
      end
  
      i += 1
    end
  
    return count
  end
  
puts count_e("movie") # => 1
puts count_e("excellent") # => 3


# my while loop is iterating well?
# how to bring all characters seperately
def count_e1(word)
    i = 0
    while i < word.length
        puts word[i] # word[i] refers to a character in word
        i+=1
    end
end

count_e1("exellent")

# e
# x
# e
# l
# l
# e
# n
# t


# my while loop is iterating well?
# how to bring all characters seperately
## check if it is 'e'
## if yes, I have to count 1 increment
### so, I need a new variable 'count'
#### and then, move to the next character. how to do? [i] + 1
def count_e2(word)

    count=0 # use count to track the number of e's
    i = 0 # use i to iteratethrough the word
    while i < word.length
        char = word[i] # word[i] refers to a character in word
        if char == 'e'
        count += 1
        end

        i += 1
    end

    return count
end

puts count_e2("exellent")
# 3


### Personal Question ###
# - 1. Comparison of while loop w/ or w/o puts! See the result below
# without puts
def count_eNoPuts(word)
  i = 0
  while i < word.length
      puts word[i] # word[i] refers to a character in word
      i+=1
  end
end

count_eNoPuts("exellent") # without 'puts'
puts "---"
# e
# x
# e
# l
# l
# e
# n
# t
# ---

# - 2. Comparison of while loop w/ or w/o puts! See the result below
# with puts
def count_eYesPuts(word)
  i = 0
  while i < word.length
      puts word[i] # word[i] refers to a character in word
      i+=1
  end
end

puts count_eYesPuts("exellent") # add 'puts' in the front
puts "---"
# e
# x
# e
# l
# l
# e
# n
# t
#
# ---

# Conclusion : 
# puts count_eYesPuts("exellent")는 return value가 없는 것 그 자체의 상태까지도 출력을 하고 중단되지만,
# count_eYesPuts("exellent")는 유효한 return value가 없다면 바로 중단!