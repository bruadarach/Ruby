# Overall Exercise 5 : Prime Factors
# Write a method prime_factors 
# that takes in a number and 
# returns an array 
# containing all of the prime factors of the given number.

# input type : a number 
# output(to return) type : number(prime factors) / a new array


########## 어떤 정수를 소수의 곱만으로 표현하는 것을 소인수분해라고 합니다. ###########
########## 인수(aliquot part) & 소인수(prime factor) ###########
# 12를 두수의 곱으로 나타내면12=1X12, 12=2X6, 12=3X4이므로 
# 1, 2, 3, 4, 6, 12는 12의 약수이다. 
# 이때 12의 약수를 인수라고도 한다. 

# 이 중 2, 3은 소수이면서 12의 인수이다. 
# 이와 같이 인수들중에서소수인 인수를 소인수라고 함


# My solution - 따라서, 약수 먼저 구하고, 약수 중 소수인 것이 소인수야! 
# Step 1
def prime_factors(num)
    
    temp = []
    (1..num).each do |ele|
        if num % ele == 0
             temp << ele
        end 
    end

    return temp
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
# [1, 2, 3, 4, 6, 8, 12, 24]
# [1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60]


# Step 2
def prime_factors(num)
    
    temp = []
    (1..num).each do |ele1|
        if num % ele1 == 0
             temp << ele1
        end 
    end

    checker = []
    final = []

    temp.each do |checknum|
        if checknum == 1
            next 
        end 

        if checknum >= 2
            checker << checknum

            (2...checknum).each do |ele2|
                if checknum % ele2 == 0
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

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts


# Teacher's solution
def prime_factors(num)
    prime_facts = []
  
    (1..num).each do |i|
      if num % i == 0 && prime?(i)
        prime_facts << i
      end
    end
  
    return prime_facts
end
  
def prime?(n)
    if n < 2
      return false
    end
  
    (2...n).each do |i|
      if n % i == 0
        return false
      end
    end
  
    return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts


# Explanation

# Step 1 : find factors first!
def prime_factors(num)
    facts = []

    (1..num).each do |i|
        if num % i == 0 # check if 'i' is a factor
            facts << i
        end 
    end 
    print facts
    puts

end    
print prime_factors(24) #=> [2, 3]
puts
# print prime_factors(60) #=> [2, 3, 5]
# puts

# [1, 2, 3, 4, 6, 8, 12, 24]


# Step 2 : Just need to choose prime ones out of factors
########## IMPORTANT : chech both (a factor && a prime number = prime factor!)
def prime_factors(num)
    facts = []

    (1..num).each do |i|
        if num % i == 0 && prime?(i) ##### if it is a factor && prime number? = prime factor !!!
            facts << i
        end 
    end 

    return facts
end 


# Step 2 : Make def prime?(num)
# How we can use this def prime?(num)?
def prime?(num)
    if num < 2
        return false
    end 

    (2...num).each do |i|
        if num % i == 0
            return false 
        end 
    end 
    return true
end 

puts prime?(8) #=> false
puts prime?(11) #=> true


print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts

# [1, 2, 3, 4, 6, 8, 12, 24]