##### Default Arguments And Option Hashes Notes

### Default Arguments ###
## As you are writing methods there are times where you may want to make an argument optional. In this scenario, we can assign a default value in the parameter list:

## Let's make num an optional parameter.
## By default, num will have the value of 1
def repeat(message, num=1)
    message * num
end

puts repeat("hi")
puts repeat("gooebye", 3)
# hi
# gooebyegooebyegooebye


## To avoid confusion, it's best practice to have optional parameters listed after the required ones.
## to organize intuitiveonly, assign default values at the end of the parameter list.
## A fairly common design pattern is to set an arg to nil by default and have logic based on that scenario:
def greet(person1, person2=nil)
    if person2.nil?
        puts "Hey " + person1
    else
        puts "Hey " + person1 + " and " + person2
    end
end

greet("Suji") #=> Hey Suji
greet("Suji","Lucky") #=> Hey Suji and Lucky 


### Option Hashes ###
## If you have a method that accepts a hash as an argument, you can omit the braces when passing in the hash:
def method(hash) 
    p hash
end

method({"location"=>"Seoul", "color"=>"blue", "size"=>500})
# {"location"=>"Seoul", "color"=>"blue", "size"=>500}

method("location"=>"Seoul", "color"=>"blue", "size"=>500)
# {"location"=>"Seoul", "color"=>"blue", "size"=>500}


## This can really clean things up when you have other arguments before the hash:
def modify_string(str, options)
    str.upcase! if options["upper"]
    p str * options["repeats"]
end

modify_string("bye", {"upper"=> true, "repeats"=>3})
# "BYEBYEBYE"

modify_string("bye", "upper"=>true, "repeats"=>3)
# "BYEBYEBYE"


## Combining this with the default arguments we covered in the previous section can make our code even more flexible:
def modify_string(str, options={"upper"=>false, "repeats"=>1})
    str.upcase! if options["upper"]
    p str * options["repeats"]
end

modify_string("bye")
# "bye"
modify_string("bye", "upper"=>true, "repeats"=>3)
# "BYEBYEBYE"



# (Q?) upcase!  or  !(if ~~~)
def strup1(str)
    p str.upcase!
end

strup1("what")
# "WHAT"


def strup2(str)
    p str.upcase
end

strup2("what")
# "WHAT"


def strup3(str, options = false)
    p str.upcase!+ "good" if options
end
strup3("what")
# nil

def strup4(str, options = false)
    p str.upcase! + "good" if options
end
strup4("what", options=true)
# "WHAThi"