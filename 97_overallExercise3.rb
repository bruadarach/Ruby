# Overall Exercise 3 : Prime
# Write a method prime? 
# that takes in a number and returns a boolean, 
# indicating whether the number is prime. 
# A prime number is only divisible by 1 and itself.

# input type : num
# output(to return) type : boolearn (num is prime? only / 1 and num)


# A prime number is a whole number greater than 1 whose only factors are 1 and itself. 
# A factor is a whole numbers that can be divided evenly into another number. 
# The first few prime numbers are 2, 3, 5, 7, 11, 13, 17, 19, 23 and 29.
# Numbers that have more than two factors are called composite numbers(합성수). 
# The number 1 is neither prime nor composite. 

# 소수(Prime number)는 1과 자기자신만을 약수로 가지는 양의 정수를 말한다. 
# 2, 3, 5, 7, 11, 13... 등의 수이다. 
# 어떤 수가 소수인지 판단하는 방법에 대해 알아보자.
# 가장 간단하게 소수의 정의로부터, 어떤 자연수 N이 소수인지를 살펴보려면

# N 이 1 이면 소수가 아니다.
# 2 부터 N-1 까지의 자연수들로 순서대로 N을 나눠서 나누어 떨어지는 수가 하나도 없으면 N은 소수이다.
# 라는 간단한 검사 규칙을 얻을 수 있다.

# 출처: https://53perc.tistory.com/entry/파이썬-소수-판별하기 [53Percent]


# My solution 1
def prime?(num)
    if num < 2 
        return false
    elsif num == 2 
        return true
    end  

    # idea : true/false count in hash? 
    checker = []

    (2...num).each do |number|
        # puts "=-=-=-=-=-="
        # puts "number is = " + number.to_s + " and num % number = " + (num % number).to_s
        if num % number == 0 
            checker << false 
        else   
            checker << true
        end 
    end 
    #return checker
    if checker.include?(false)
        return false 
    else  
        return true
    end 
end


puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


# My final solution 
def prime?(num)
    if num < 2 
        return false
    # elsif num == 2 
    #     return true
    end  

    checker = []

    (2...num).each do |number|
        if num % number == 0 
            checker << false 
        else   
            checker << true
        end 
    end 
    
    if checker.include?(false)
        return false 
    else  
        return true
    end 
end


puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


# My solution updated based on teacher's solution
##### IMPORTANT : where to put "return true" !! then, I don't have to create the 'checker' variable
##### 하나라도 false면 false라고 걸러내고, true를 리턴하네..
def prime?(num)
    if num < 2 
        return false
    # elsif num == 2 
    #     return true
    end  

    #checker = []

    (2...num).each do |number|
        if num % number == 0 
            return false
            #checker << false 
        # else   
        #     checker << true
        end 
    end 
  
    return true # IMPORTANT TO WHERE TO PUT "RETURN TRUE"!
    
    # if checker.include?(false)
    #     return false 
    # else  
    #     return true
    # end 
end


puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


# Teacher's solution
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

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


# Explanation for teacher's solution
# Step 1
def prime?(num)
    if num < 2
        return false 
    end 

    (2...num).each { |divisor| puts divisor } # 2 upto 10
end 

puts prime?(11) #=> true
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 2...11

# Step 2 - change into 'do' block
##### CHECK WHEN WE RETURN 'TRUE'!!!
def prime?(num)
    if num < 2
        return false 
    end 

    (2...num).each do |divisor|
        if num % divisor == 0
            return false
        end 
    end 

    return true ##### TRICKY! WE ONLY KNOW IF A NUMBER IS ACTUALLY A PRIME AFTER WE CHECK EVERYTHING!! AFTER A LOOP!
end 

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


# Explanation for my solution
def prime?(num)
    if num < 2 
        return false
    elsif num == 2 
        return true
    end  

    # checker = []

    (2...num).each do |number|
        if num % number == 0 
            return false 
        else   
            return true
        end 
    end 
    
    # if checker.include?(false)
    #     return false 
    # else  
    #     return true
    # end 
end


puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false

# true
# true
# true
# false
# true
# false


# check "puts prime?(9)  #=> false" again! what's the problem ? 
# My solution 1
def prime?(num)
    if num < 2 
        return false
    elsif num == 2 
        return true
    end  

    # idea : true/false count in hash? 
    checker = []

    (2...num).each do |number|
        # puts "=-=-=-=-=-="
        # puts "number is = " + number.to_s + " and num % number = " + (num % number).to_s
        if num % number == 0 
            checker << false 
        else   
            checker << true
        end 
    end 
    #return checker
    if checker.include?(false)
        return false 
    else  
        return true
    end 
end


puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


def prime?(num)
    if num < 2
        return false 
    end 

    (2...num).each do |number| # 2 upto 10
        if num % number == 0 
            return false 
        end
    end
    return true
end 

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


# My Question on the process of iteration/looping
# What about "puts prime?(2)"" / (2..num).each do |divisor|
def prime?(num)
    if num < 2
        return false 
    end 

    (2..num).each do |divisor|
        puts "======="
        puts num
        puts divisor
        puts num % divisor == 0
        puts "======="
        if num % divisor == 0
            return false
        end 
    end 

    return true ##### TRICKY! WE ONLY KNOW IF A NUMBER IS ACTUALLY A PRIME AFTER WE CHECK EVERYTHING!! AFTER A LOOP!
end 

puts prime?(2)  #=> true
# =======
# 2
# 2
# true
# =======
# false


# What about "puts prime?(2)"" / (2...num).each do |divisor|
def prime?(num)
    if num < 2
        return false 
    end 

    (2...num).each do |divisor| # This loop/iteration does not work I think.  # It is just 2 and finished.
        puts "======="
        puts num
        puts divisor
        puts num % divisor == 0
        puts "======="
        if num % divisor == 0
            return false
        end 
    end 

    return true # So, directly comes to here! 
end 

puts prime?(2)  #=> true
# true