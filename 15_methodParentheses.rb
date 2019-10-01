# Parentheses : Ruby is flexible in where we can use parentheses when dealing with our methods. 
  # (1) If a method does not expect any parameters, 
  # - we prefer to call the method without using parentheses. 
 
  def greet
    puts "hello world"
  end
  
  # Below are two valid ways to call the greet method.
  greet   # this is preferred since greet does not expect parameters
  greet()  
  
  # (2) If a method does expect paremeters,
  # - we prefer to call methods with parentheses, although it is option in this case.
  # This is a common convention, although ruby will accept either style.

  def greet(name)
    puts "hey " + name
  end
  
  # Below are two valid ways to call the greet method.
  greet "programmers"
  greet("programmers") # this is preferred since greet does expect parameters
  

# Terminology : Variable, parameter, argument

# Variables are names that can hold data. Below, food is a variable that holds the value "toast":

food = "toast"

# Parameters are the names that can hold data in a method definition. 
# Parameters are placed in parentheses following the method's name. Below food and drink are parameters. 
# sentence is a normal variable; it is not a parameter:

def meal(food, drink)
  sentence =  "I like to eat " + food + " with a cup of " + drink
  puts sentence
end

# Arguments are the data values that we pass into a method when we call the method. 
# We place arguments in the parentheses of a method call. 
# Those argument values will be assigned to the parameters when we evaluate the method. 
# Below, "toast", "coffee", "pancakes", "orange juice" are arguments:

def meal(food, drink)
  sentence =  "I like to eat " + food + " with a cup of " + drink
  puts sentence
end

meal("toast", "coffee") # Here we pass "toast" and "coffee" into our method.
meal("pancakes", "orange juice") # We can also pass "pancakes" and "orange juice" in another call

# In other words, Arguments are the concrete data values we pass into method calls. 
# Parameters are the "placeholders" that we use to write a general method.

def meal(parameter1, parameter2) # parameters
  variable =  "I like to eat " + food + " with a cup of " + drink # variable
  puts sentence
end

meal(argument1, argument2) # arguments