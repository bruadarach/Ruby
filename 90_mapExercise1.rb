# Map Exercise 1 : Map By Name
# Write a method map_by_name 
# that takes in an array of hashes and 
# returns a new array containing the names of each hash.

# input type : hash / array
# output(to return) type : hash name / new array


# My solution 

# Step 0 
subhash = {"type"=>"dog", "name"=>"Rolo"}
puts subhash["name"] # Rolo

pets = [
    {"type"=>"dog", "name"=>"Rolo"},
    {"type"=>"cat", "name"=>"Sunny"},
    {"type"=>"rat", "name"=>"Saki"},
    {"type"=>"dog", "name"=>"Finn"},
    {"type"=>"cat", "name"=>"Buffy"}
]
puts pets[0]["name"] # Rolo
puts pets[1]["name"] # Sunny


# Step 1
def map_by_name(arr)

    new_arr = arr.map.with_index do |ele, idx| # map : no need p/puts/print, create a new array to hold new values, assign a variable directly and provide as an array format
        arr[idx]["name"]
    end
end

pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts


# Teacher's solution
def map_by_name(arr)
    return arr.map { |hash| hash["name"] }
end

pets = [
{"type"=>"dog", "name"=>"Rolo"},
{"type"=>"cat", "name"=>"Sunny"},
{"type"=>"rat", "name"=>"Saki"},
{"type"=>"dog", "name"=>"Finn"},
{"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
{"name"=>"Japan", "continent"=>"Asia"},
{"name"=>"Hungary", "continent"=>"Europe"},
{"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts


# Explanation
def map_by_name(arr)
    return arr.map { |hash| hash["name"] }
end

pets = [
{"type"=>"dog", "name"=>"Rolo"},
{"type"=>"cat", "name"=>"Sunny"},
{"type"=>"rat", "name"=>"Saki"},
{"type"=>"dog", "name"=>"Finn"},
{"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
{"name"=>"Japan", "continent"=>"Asia"},
{"name"=>"Hungary", "continent"=>"Europe"},
{"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts


# Manipulation by me
def map_by_name(arr)
    return arr.map { |hash| hash["type"] = "how are you", hash["name"] = "hi" }
end

pets = [
{"type"=>"dog", "name"=>"Rolo"},
{"type"=>"cat", "name"=>"Sunny"},
{"type"=>"rat", "name"=>"Saki"},
{"type"=>"dog", "name"=>"Finn"},
{"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> [["how are you", "hi"], ["how are you", "hi"], ["how are you", "hi"], ["how are you", "hi"], ["how are you", "hi"]]
puts

countries = [
{"name"=>"Japan", "continent"=>"Asia"},
{"name"=>"Hungary", "continent"=>"Europe"},
{"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> [["how are you", "hi"], ["how are you", "hi"], ["how are you", "hi"]]
puts


# Manipulation by me
def map_by_name(arr)
    return arr.map { |hash| hash["name"] = hash["name"] + "!" }
end

pets = [
{"type"=>"dog", "name"=>"Rolo"},
{"type"=>"cat", "name"=>"Sunny"},
{"type"=>"rat", "name"=>"Saki"},
{"type"=>"dog", "name"=>"Finn"},
{"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo!", "Sunny!", "Saki!", "Finn!", "Buffy!"]
puts

countries = [
{"name"=>"Japan", "continent"=>"Asia"},
{"name"=>"Hungary", "continent"=>"Europe"},
{"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan!", "Hungary!", "Kenya!"]
puts


# Why not using each, do comnination?
def map_by_name(arr)
    new_arr = []
    arr.each do |ele|
        new_arr << ele["name"]
    end
    return new_arr
end

pets = [
    {"type"=>"dog", "name"=>"Rolo"},
    {"type"=>"cat", "name"=>"Sunny"},
    {"type"=>"rat", "name"=>"Saki"},
    {"type"=>"dog", "name"=>"Finn"},
    {"type"=>"cat", "name"=>"Buffy"}
]

print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
    {"name"=>"Japan", "continent"=>"Asia"},
    {"name"=>"Hungary", "continent"=>"Europe"},
    {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts


# Comparision : Do/Each VS. Map

def map_by_name(arr)
    return arr.map { |hash| hash["name"] }
end


def map_by_name(arr)
    new_arr = [] # No need
    arr.each do |ele| # Remove 'each do', add 'map' { |iteration| new value }
        new_arr << ele["name"] # No Need 
    end
    return new_arr # No need, even, return a new variable!
end


# Working perfectly without 'return'
def map_by_name(arr)
    arr.map { |hash| hash["name"] }
end

pets = [
{"type"=>"dog", "name"=>"Rolo"},
{"type"=>"cat", "name"=>"Sunny"},
{"type"=>"rat", "name"=>"Saki"},
{"type"=>"dog", "name"=>"Finn"},
{"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
{"name"=>"Japan", "continent"=>"Asia"},
{"name"=>"Hungary", "continent"=>"Europe"},
{"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts