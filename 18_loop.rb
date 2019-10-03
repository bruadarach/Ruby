# While Loops

# while the condition of a loop is true, keep running the loop
# once the condition is false, stop the loop
# infinite loop = keep running the loop

def repeatHello()
    puts "hello"
    puts "hello"
    puts "hello"
    puts "hello"
    puts "hello"
end

repeatHello()
# hello
# hello
# hello
# hello
# hello

# Problem? If you want to print out 100 times? use 'while'!

def repeatHello2()
    counter= 1
    while counter <=5 # while condition - to evaluate boolean!
        puts "hello"
        counter += 1
    end
end

repeatHello2()
# hello
# hello
# hello
# hello
# hello

# Looping process/order?
def repeatHello3()
    
    puts "before the loop"

    counter = 0
    while counter <5 # iteration!
        puts counter
        counter += 1
    end
    
    puts "after the loop"
end

repeatHello3()
# before the loop
# 0
# 1
# 2
# 3
# 4
# after the loop


# Ok, let's practice more!
def printNums
    i = 0
    while i < 4
        puts i 
        i += 1
    end
end

printNums()
# 0 
# 1
# 2
# 3

def printNum2
    i = 10
    while i >= 0
        puts i 
        i -= 1
    end
end

printNum2()
# 10
# 9
# 8
# 7
# 6
# 5
# 4
# 3
# 2
# 1
# 0

# If you call 2 times? 
def printNum3
    i = 1           # conditional number 1 
    while i <= 5    # conditional number 2 
        puts i 
        i += 1      # conditional number 3 
    end
end

printNum3
printNum3
# 1
# 2
# 3
# 4
# 5
# 1
# 2
# 3
# 4
# 5

# If you want to put parameters?
def printNum4(min, max) # (condintional number 1, conditional number 2)
    i = min             # how we start ?
    while i <= max      # how we end ? 
        puts i 
        i += 1          # how we make increment in between 
    end
end

printNum4(1, 4)
puts "-----"
printNum4(11, 20)
# 1
# 2
# 3
# 4
# -----
# 11
# 12
# 13
# 14
# 15
# 16
# 17
# 18
# 19
# 20

# If you want to put parameters, setting step together
def printNum5(min, max, step) # (condintional number 1, conditional number 2, conditional number 3)
    i = min             # how we start ?
    while i <= max      # how we end ? 
        puts i 
        i += step          # how we make increment in between 
    end
end

printNum5(1, 10, 2)
# 1
# 3
# 5
# 7
# 9

