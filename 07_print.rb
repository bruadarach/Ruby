# The ways to "print" output to the screen in Ruby
    # 1. print
    # 2. puts
    # 3. p 

# 1. print : 
    # the simplest method used to print data. 
    # It will do minimal formatting and 
    # not even add a new line at the end of the print

    print "hello"
    print "world"

    # helloworld

    # \n = new line
    # \t = tap

    print "\nhello\n"
    print "\tworld\n"

# 2. puts : 
    # prints data to the screen, 
    # but with some formatting, 
    # including adding an automatic new line after every puts

    puts "hello"
    puts "world"

    # hello
    # world

# 3. p : 
    # prints data to the screen with a new line 
    # but also gives information on type of data was printed

    p "hello" # "hello"
    p 'goodbye' # "goodbye"
    p "42" # "42"
    p 42 # 42

    # it doesn't matter if we wrap a string in double quotes or single quotes, 
    # it is still a string 
    # how to differentiate the string "42" from the number 42?
    # the p method will actually print out the quotes that wrap the string data.
