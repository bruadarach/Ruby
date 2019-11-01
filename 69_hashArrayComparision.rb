# array = collection of multiple things
# array is good to try to represent a collection of multiple things

# good array data
animals = ["dog", "cat", "fish", "bird"]

# not so good array data
person = ["Alvin", 100, "New York", "burgers", true]
puts person[0]
# Alvin

# better as hash - What the data represent - connection is very obvious
# hash is more useful to describe many facets of a single thing
betterPerson = {
    "name" => "Alvin",
    "age" => 100,
    "location" => "San Francisco",
    "favoriteFood" => "burgers",
    "isHungry" => true,
}

puts betterPerson['location']
# San Francisco