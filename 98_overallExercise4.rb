# Overall Exercise 4 : Pick Primes
# Write a method pick_primes 
# that takes in an array of numbers and 
# returns a new array containing only the prime numbers.

# input type : number / array
# output(to return) type : number(prime) / a new array

# My solution 
def pick_primes(numbers)
    numbers.each { |num| puts num }
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
# 2
# 3
# 4
# 5
# 6
# [2, 3, 4, 5, 6]
# 101
# 20
# 103
# 2017
# [101, 20, 103, 2017]


# Step 2
def pick_primes(numbers)

    numbers.each do |num|
        (2...num).each do |ele| 
            puts ele
        end 
    end
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
# print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
# puts

# 2
# 2
# 3
# 2
# 3
# 4
# 2
# 3
# 4
# 5
# [2, 3, 4, 5, 6]


# Step 3
def pick_primes(numbers)

    checker = []

    numbers.each do |num|
        if num == 2
            checker << 2
        end 

        if num > 2 
            checker << num

            (2...num).each do |ele| 
                if num % ele == 0
                    checker << false
                else   
                    checker << true
                end 
            end
        end
        print checker
        checker = []
    end
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
# print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
# puts

# [2][3, true][4, false, true][5, true, true, true][6, false, false, true, true][2, 3, 4, 5, 6]


# Step 4
def pick_primes(numbers)

    checker = []
    final = []

    numbers.each do |num|
        if num == 2
            checker << 2
        end 

        if num > 2 
            checker << num

            (2...num).each do |ele| 
                if num % ele == 0
                    checker << false
                else   
                    checker << true
                end 
            end
        end
        if !checker.include?(false)
            final << checker[0]
        end
        checker = []
    end
    return final
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts


# Teacher's solution
def pick_primes(numbers)
    return numbers.select { |num| prime?(num)}
end
  
def prime?(num)
    if num < 2
      return false
    end
  
    (2...num).each do |factor|
      if num % factor == 0
        return false
      end
    end
  
    return true
end
  
print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts


# Explnation

# select = [] + boolean check if num.select { |iteration| (if) check boolean condition }
nums = [1,2,3,4,5,6]
odds = nums.select { |ele| ele % 2 != 0 }
print odds 
puts

evens = nums.select { |ele| ele % 2 == 0}
print evens
puts 

# select = [] + boolean check if num.select { |iteration| (if) check condition }
def pick_primes(numbers)
    return numbers.select { |num| prime?(num)} # if a number is a prime?
end 

def prime?(num) # return a boolean
    if num < 2
        return false
    end  

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
