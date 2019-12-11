# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.

def max_inject(num1, num2, num3, *other_args)
    
    arr = [num1, num2, num3, *other_args]
    arr.flatten

    max = ""
    arr.inject do |acc, el|
        if el > acc
            max = el
        else
            max = acc
        end
    end
    return max
end

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30


# Teacher's solution
# Step 1
def max_inject(*arr)
    arr
end

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30

# [1, -4, 0, 7, 5]
# [30, 28, 18]


# Step 2
def max_inject(*arr)
    arr.inject do |max, el|
        if el > max
            el # I will take 'el' 
        else # if you don't write the 'else' statement, in some scenarios, the inject block will return 'nil' automatically
            max
        end
    end
end

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30

# [1, -4, 0, 7, 5]
# [30, 28, 18]


# Inject
p [11, 7, 2, 4].inject { |acc, el| acc + el }
# 24

# Splat
def method(arg_1, arg_2, *other_args)
    p arg_1         # "a"
    p arg_2         # "b"
    p other_args    # ["c", "d", "e"]
end

method("a", "b", "c", "d", "e") 
# "a"
# "b"
# ["c", "d", "e"]