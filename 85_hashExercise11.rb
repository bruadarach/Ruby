# Hash Exercise 11 : Hash To Pairs
# Write a method hash_to_pairs (hash to 2D-array)
# that takes in a hash and 
# returns a 2D array representing each key-value pair of the hash.

# input type : hash
# output(to return) type : hash k-v pair / 2D-array

# My solution
def hash_to_pairs(hash)

    new = []
    hash.each do |k, v|
        new << [k, v]
    end 
    return new

end

print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts


print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts


# Summary I 
def hash_to_pairs(hash)

    new = []
    hash.each { |k, v| new << [k, v] }
    return new

end

print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts


print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts


# Teacher's solution
def hash_to_pairs(hash)
    pairs = []
    hash.each { |key, val| pairs << [key, val] }
    return pairs
end

print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts

print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts


# Explanation
def hash_to_pairs(hash)
    arr = []
    hash.each { |k, v| arr << [k ,v] }
    return arr 

end 

print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts

print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts