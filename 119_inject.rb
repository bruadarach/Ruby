##### Inject with only a block #####

p [11, 7, 2, 4].inject { |acc, el| acc + el }
# 24

### Explanation
# acc = accumulator
# el = element

### FIRST ITERAITON :
# acc = 11
# ele = 7 
# new_acc = 18

### SECOND ITERATION :
# acc = 18
# ele = 2
# new_acc = 20

### THIRD ITERATION :
# acc = 20
# ele = 4
# new_acc = 24


p [11, 7, 2, 4].inject { |acc, el| acc * el } # => 616
# 11 * 7 = 77
# 77 * 2 = 154
# 154 * 4 = 616


# How to find the MINIMUM VALUE in an array?!
# I think that acc = current_value, el = next_value
[11, 7, 2, 4].inject do |acc, el|
    p "==="
    p acc
    p el
    if el < acc
        p el
    else
        p acc
    end
end # => 2

# "==="
# 11
# 7
# 7
# "==="
# 7
# 2
# 2
# "==="
# 2
# 4
# 2


##### Inject with a default accumulator #####
p [11, 7, 2, 4].inject(100) { |acc, el| acc + el }
# 124

### Explanation
# acc = accumulator = 100
# el = element = 11

### FIRST ITERATION :
# acc = 100
# el = 11
# new_acc = 111

### SECOND ITERATION :
# acc = 111
# el = 7
# new_acc = 118

### THIRD ITERATION :
# acc = 118
# el = 2
# new_acc = 120

### FOURTH ITERATION :
# acc = 120
# el = 4
# new_acc = 124


##### INJECT : SUMS UP ALL EVEN NUMBERS OF AN ARRAY! #####
[11, 7, 2, 4].inject(0) do |acc, el|
    if el.even?
        p acc + el 
    else  
        p acc  
    end   
end #=> 6

# 0
# 0
# 2
# 6


##### Teacher's Lecture #####
arr = [2, 3, 1, 7]

result = arr.inject { |accum, el| accum + el }
p result
# 13


# 1st round
# accum : 2
# el : 3

# 2nd round
# accum : 5
# el : 1

# 3rd round
# accum : 6
# el : 7

# final
# accum : 13


arr = [2, 3, 1, 7]

result = arr.inject { |accum, el| accum * el }
p result
# 42


# 1st round
# accum : 2
# el : 3

# 2nd round
# accum : 6
# el : 1

# 3rd round
# accum : 6
# el : 7

# final
# accum : 42


# Assign Initial Accumulator
arr = [2, 3, 1, 7]

result = arr.inject(100) { |accum, el| accum + el }
p result
# 113

# 1st round
# (Initial) accum : 100
# el : 2

# 2nd round
# accum : 102
# el : 3

# 3rd round
# accum : 105
# el : 1

# 3rd round
# accum : 106
# el : 7

# final
# (Final) accum : 113

p arr.sum 
# 13
