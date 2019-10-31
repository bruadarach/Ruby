# Hash Methods
# .length
# .has_key?(k)
# .has_value?(v)
# .keys
# .values

dog = {
    "name" => "lucky",
    "color" => "pink",
    "age" => 5,
    "isHungry" => true,
    "enemies" => ["lion"]
}

puts dog
# {"name"=>"lucky", "color"=>"pink", "age"=>5, "isHungry"=>true, "enemies"=>["lion"]}

# .length => the number of pairs in a hash
puts dog.length
# 5 

# manipulate values in a hash
dog["name"] = "Cookie"
puts dog
# {"name"=>"Cookie", "color"=>"pink", "age"=>5, "isHungry"=>true, "enemies"=>["lion"]}

# add a new key & value
dog["location"] = "NY"
puts dog
# {"name"=>"Cookie", "color"=>"pink", "age"=>5, "isHungry"=>true, "enemies"=>["lion"], "location"=>"NY"}

# manipulate a value, which is a number
dog["age"] += 10
puts dog
# {"name"=>"Cookie", "color"=>"pink", "age"=>15, "isHungry"=>true, "enemies"=>["lion"], "location"=>"NY"}

# manipulate a value, which is an array
puts dog["enemies"]
puts dog["age"]
# lion
# 15

# manipulate a value, which is an array, and addes a new value into the array
puts dog["enemies"] << "mailman"
puts dog
# {"name"=>"Cookie", "color"=>"pink", "age"=>15, "isHungry"=>true, "enemies"=>["lion", "mailman"], "location"=>"NY"}

# What if there are duplicated keys? 
# Teacher said it is basically NOT ALLOWED, but maybe in the new version, it is possible, and prints the latter value of the same key, I guess.
puts "---"
dog2 = {
    "name" => "lucky",
    "color" => "pink",
    "age" => 5,
    "age" => 10,
    "isHungry" => true,
    "enemies" => ["lion"]
}
puts dog2
# {"name"=>"lucky", "color"=>"pink", "age"=>10, "isHungry"=>true, "enemies"=>["lion"]}

puts "---"
dog3 = {
    "name" => "lucky",
    "color" => "pink",
    "age" => 5,
    "age" => 10,
    "age" => 1,
    "isHungry" => true,
    "enemies" => ["lion"],
    "enemies" => ["mailman"]
}
puts dog3
# {"name"=>"lucky", "color"=>"pink", "age"=>1, "isHungry"=>true, "enemies"=>["mailman"]}


# .has_key?
# returns a boolean
dog = {
    "name" => "lucky",
    "color" => "pink",
    "age" => 5,
    "isHungry" => true,
    "enemies" => ["lion"]
}

puts dog.has_key?("color")
# true
puts dog.has_key?("breed")
# false

# What about a capital character of a key? NOT ALLOWED
puts dog.has_key?("Color")
# false

# .has_value?
puts dog.has_value?(5)
# True

# Do you have any values, which is false?
puts dog.has_value?(false)
# false

# print all keys in a hash
print dog.keys
# ["name", "color", "age", "isHungry", "enemies"]

# print all values in a hash
print dog.values 
# ["name", "color", "age", "isHungry", "enemies"]

# If I want to call a key "color"? use an index in a hash
print dog.keys[1]
# color

# If I want to call a value "["lion"]"? use an index in a hash
print dog.values[4]
# ["lion"]]
