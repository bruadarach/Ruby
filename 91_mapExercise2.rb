# Map Exercise 2 : Map By Key
# Write a method map_by_key 
# that takes in an array of hashes and a key string. 
# The method should returns a new array 
# containing the values from each hash for the given key.

# input type : hash, a sting(key) / array
# output(to return) type : hash value of the given key / new array


# My solution 
def map_by_key(arr, key)
    new_arr = arr.map { |ele| ele[key] }
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts


# Teacher's solution - directly return the new map value
def map_by_key(arr, key)
    return arr.map { |hash| hash[key] } # map's function : it becomes new elements of hash array
end

locations = [
{"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
{"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
{"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts


# Explnation
def map_by_key(arr, key)
    return arr.map { |hash| hash[key] }
end

locations = [
    {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
    {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
    {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
    ]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts