##### IMPLICIT RETURNS #####

# Less Preferred
def get_avg(num_1, num_2)
    return (num_1 + num_2) / 2
end

puts get_avg(4, 6) #=> 5

# Preferred by a Rubyist
def get_avg(num1, num2)
    (num1 + num2) / 2
end 

puts get_avg(2, 6) #=> 4 


##### OMMITTING PARENTHESES FOR METHOD CALLS WITH NO ARGUMENTS #####
# Less preferred
def say_hi
    "hi"
end

puts say_hi() #=> hid

# Preferred by a Rubyist
def say_hi
    "hi"
end

puts say_hi #=> hi


##### USE SINGLE LINE CONDITIONALS WHEN POSSIBLE #####
# Less preferred
raining = true

if raining
    puts "don't forget an umbrella!"
end

# Preferred by a Rubyist
raining = true
puts "don't forget an unbrella!" if raining


##### USE BUILT-IN METHODS: .even? #####
# Less preferred
num = 6
puts num % 2 == 0 #=> true

# Preferred by a Rubyiest
num = 6
puts num.even? #=> true


##### USE BUILT-IN METHODS: .last #####
# Less preferred
people = ["Suji", "Minji", "Lucky"]
puts people[people.length-1] #= Lucky>

# Preferred by a Rubyist
people = ["Suji", "Minji", "Lucky"]
puts people[-1] #= Lucky>
puts people.last #= Lucky>


##### USE ENUMERABLES TO ITERATE: .times { puts " "} #####
# Less preferred
def repeat_hi(num)
    i = 0
    while i < num
        puts "hi"
        i += 1 
    end
end 

repeat_hi(3)
# hi
# hi
# hi

# Preferred by a Rubyist
def repeat_hi(num)
    num.times { puts "hi" }
end

repeat_hi(3)
# hi
# hi
# hi


##### USE ENUMERABLES TO ITERATE: .all? { |num| num.even? } #####
# Less preferred
def all_numbers_even?(nums)
    nums.each do |num|
        return false if num % 2 != 0
    end
    true
end

puts all_numbers_even?([2,3,4,5])
# false
puts all_numbers_even?([2,4,6,8])
# true

# Preferred by a Rubyist
def all_numbers_even?(nums)
    nums.all? { |num| num.even? }
end

puts all_numbers_even?([2,3,4,5])
# false
puts all_numbers_even?([2,4,6,8])
# true

