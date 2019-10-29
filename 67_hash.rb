# Data Structure - Hashes
# Key => value pairs

my_hash = { "name" => "Academy", "color" => "red", "age" => 5 }
puts my_hash

##### If I want to print "Academy"?
puts my_hash["name"]
# Academy

puts my_hash["age"]
# 5 

##### How to change the value inside of the hash?
puts my_hash["color"] = "pink"
puts my_hash
# {"name"=>"Academy", "color"=>"pink", "age"=>5}

my_hash["age"] += 1
puts my_hash
# {"name"=>"Academy", "color"=>"pink", "age"=>6}

##### Boolean? possible? 
my_hash = { "name" => "Academy", "color" => "red", "age" => 5, "isAwesome" => true }

##### {Key => value}, make a key a different type of data? yes
##### indentation to be more readable
my_hash = { 
    "name" => "Academy", 
    "color" => "red", 
    "age" => 5, 
    "isAwesome" => true,
    42 => "hello"
} 

puts my_hash[42]
# hello

