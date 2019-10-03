# break - immediately exit the loop
# next - skips to the next iteration
#      - skip over any code after the keyword "next"

# print number twice # use 'break'
i = 1
while i <= 10
    puts i
    if i == 5
        break
    end

    puts i
    i += 1
end

puts "loop end"

# 1
# 1
# 2
# 2
# 3
# 3
# 4
# 4
# 5     <= stops after the first time we print out 5. 
# loop end


# print number twice # use 'next'  =>  stuck in an infinite loop
# print out puts i(5) => if i == 5 => next => puts i(5) => if i == 5 => next => puts i(5)
# never reach to "i += 1"
i = 1
while i <= 10
    puts i
    if i == 5
        next # skip over the iteration after the 'next' keyword
    end

    puts i # not running after the 'next' keyword
    i += 1 # not running after the 'next' keyword
end

puts "loop end"
# 5
# 5
# 5
# 5
# 5
# 5
# 5
# 5
# 5
# 5
# infinite loop...


# I only print out one 5! 
# that comes from the first "puts i" in the first iteration
# Skip 5 in the second iteration after the 'next' keyword

i = 1
while i <= 10
    puts i
    if i == 5
        i += 1
        next # skip over the iteration after the 'next' keyword
    end

    puts i # not running after the 'next' keyword
    i += 1 # not running after the 'next' keyword
end

puts "loop end"

# 1
# 1
# 2
# 2
# 3
# 3
# 4
# 4
# 5 # I only print out one 5!
# 6
# 6
# 7
# 7
# 8
# 8
# 9
# 9
# 10
# 10
# loop end