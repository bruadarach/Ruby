# range enumerable

# (start..end).each, iterate from start to end (inclusive)
# (start...end).each, iterate from start to end (excluding end)

arr = ["a", "b", "c"]

# iterate in one line version
arr.each { |ele| puts ele }
# a
# b
# c

arr = [1,2,3,4,5]

# what about from 1 to 5 to iterate?
arr.each { |ele| puts ele }
# 1
# 2
# 3
# 4
# 5

# what about from 1 to 100 to iterate?
[1,2,3,4,5].each { |num| puts num }
# 1
# 2
# 3
# 4
# 5

(1..10).each { |num| puts num } # .each hits (1..10) and gives to {}block of the code 
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10

# ...
(1...10).each { |num| puts num }
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9

# Write a method fizzBuzz that takes in a number max and
# returns an array
# contatining all numbers less than max
# that are divisible by 3 or 5, but not both

def fizzBuzz(max)
    arr = []

    # 1) how to hit each? first set a range - hit each - puts num to check if iteration is working well
    (1...max).each do |num| 
        if num % 3 == 0 && num % 5 != 0 # 2) set conditionals 
            arr << num # to add to a new variable to return 
        end

        if num % 3 != 0 && num % 5 == 0 
            arr << num
        end
    end
    return arr  
end 

print fizzBuzz(20) # [3, 5, 6, 9, 10, 12, 18]
puts 


