# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

# My solution
# Step 1
def coprime?(num1, num2)

    if num1 > 1 && num2 > 1

        new1=[1]
        (2...num1).each do |num|
            if num1 % num == 0
                new1 << num
            end
        end

        new2=[1]
        (2...num2).each do |num|
            if num2 % num == 0 
                new2 << num
            end
        end

    end
    return new1, new2
end 

p coprime?(25, 12)    # => true # 1, 5 # 1, 2, 3, 4, 6, 12 # no common divisor! 
p coprime?(7, 11)     # => true # 1, 7 ,11
p coprime?(30, 9)     # => false # because of 3
p coprime?(6, 24)     # => false # because of 6

# [[1, 5], [1, 2, 3, 4, 6]]
# [[1], [1]]
# [[1, 2, 3, 5, 6, 10, 15], [1, 3]]
# [[1, 2, 3], [1, 2, 3, 4, 6, 8, 12]]


# Step 2
def coprime?(num1, num2)

    if num1 > 1 && num2 > 1

        new1=[1]
        (2...num1).each do |num|
            if num1 % num == 0
                new1 << num
            end
        end

        new2=[1]
        (2...num2).each do |num|
            if num2 % num == 0 
                new2 << num
            end
        end

    end

    # remove ["1"] in new1, new2   
    new1.shift()
    new2.shift()

    if new1.length == 0 && new2.length == 0
        return true
    end

    # print new1 
    # print new2 

    check = []
    if new1.length > 0 && new2.length > 0
        if new1.each do |num|
            check << new2.include?(num)
            end
        end 
    end
    
    #print check
    if check.include?(true)
        return false
    else 
        return true
    end
            
end

p coprime?(25, 12)    # => true # 1, 5 # 1, 2, 3, 4, 6 # no common divisor! 
p coprime?(7, 11)     # => true # 1, 7 ,11
p coprime?(30, 9)     # => false # because of 3
p coprime?(6, 24)     # => false # because of 3


# Practice
num = 5
new2 = [2,3,4,6]
p new2.include?(num) # false


##### How to find prime? using any? 
p (2...5).any? { |i| 5 % i == 0 }  #=> false
p (2...6).any? { |i| 6 % i == 0 }  #=> true


# Step 3
def coprime?(num1, num2)

    new1 = []
    (2...num1).each {|num| new1 << num if num1 % num == 0 }

    new2 = []
    (2...num2).each {|num| new2 << num if num2 % num == 0 }
    
    check = []
    if new1.each do |num|
        check << new2.include?(num)
        end
    end 
    
    if check.include?(true)
        return false
    else 
        return true
    end
end

p coprime?(25, 12)    # => true # 1, 5 # 1, 2, 3, 4, 6 # no common divisor! 
p coprime?(7, 11)     # => true # 1, 7 ,11
p coprime?(30, 9)     # => false # because of 3
p coprime?(6, 24)     # => false # because of 3


# My final solution, making def(s)
def coprime?(num1, num2)
    return checker(prime(num1), prime(num2))  
end

def prime(num1)
    
    new1 = []
    (2...num1).each {|num| new1 << num if num1 % num == 0 }
    return new1
end

def prime(num2)
    
    new2 = []
    (2...num2).each {|num| new2 << num if num2 % num == 0 }
    return new2
end

def checker(arr1, arr2)
    check = []
    if arr1.each do |num|
        check << arr2.include?(num)
        end
    end 
    
    if check.include?(true)
        return false
    else 
        return true
    end
end

p coprime?(25, 12)    # => true # 1, 5 # 1, 2, 3, 4, 6 # no common divisor! 
p coprime?(7, 11)     # => true # 1, 7 ,11
p coprime?(30, 9)     # => false # because of 3
p coprime?(6, 24)     # => false # because of 3


# Teacher's solution I 
def coprime?(num_1, num_2)

    (2..num_1).each do |divisor|
        # if devisor divides both num1 and num2 ... then return false
        if num_1 % divisor == 0 && num_2 % divisor == 0
            return false
        end 
    end
    return true
end

p coprime?(25, 12)    # => true # 1, 5 # 1, 2, 3, 4, 6 # no common divisor! 
p coprime?(7, 11)     # => true # 1, 7 ,11
p coprime?(30, 9)     # => false # because of 3
p coprime?(6, 24)     # => false # because of 3


# Teacher's solution II - using 'none'

##### none? ##### :
# Return true when no elements of result in true when passed into the block.
puts [1,3,5].none? { |i| i.even? }
# true 
puts [1,1,1,2].none? { |i| i.even? }
# false


def coprime?(num_1, num_2)
    (2..num_1).none? { |divisor| num_1 % divisor == 0 && num_2 % divisor == 0 }
end

p coprime?(25, 12)    # => true # 1, 5 # 1, 2, 3, 4, 6 # no common divisor! 
p coprime?(7, 11)     # => true # 1, 7 ,11
p coprime?(30, 9)     # => false # because of 3
p coprime?(6, 24)     # => false # because of 3