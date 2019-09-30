# Methods puts VS. return

# < PREVIOUS LECTURE>
# def say_hello(person1, person2)
#     puts person1 + " and " + person2
# end

# say_hello("Suji", "Dave") # Suji and Dave

def calc_average(num1, num2)
    sum = num1 + num2
    avg = sum / 2
    puts avg
end

calc_average(10, 2) # 6


# 15 / 2 = 7.5
def calc_average2(num1, num2)
    sum = num1 + num2
    avg = sum / 2 # 2 or 2.0?
    puts avg
end

calc_average2(10, 5) # 7


def calc_average3(num1, num2)
    sum = num1 + num2
    avg = sum / 2.0 # 2 or 2.0?
    puts avg
end

calc_average3(10, 5) # 7.5


# puts VS. return
# puts : printing out and losing the data forever 
# return : How to actually give back the type of data? use 'return'! (more useful way)

def calc_average4(num1, num2)
    sum = num1 + num2
    avg = sum / 2.0 # 2 or 2.0?
    return avg
end

calc_average4(10, 5) # nothing printed out # just, calc_average4(10, 5) = avg = 7.5
# to print out, you need to add "puts" in front of it
puts calc_average4(10, 5)

# the return keyword lets a method call evaluate to a value

# continue to use in other operations
result = calc_average4(10, 5) 
puts result + 1 # 8.5

