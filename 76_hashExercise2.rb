# Hash Exercise 2 : Get Full Name
# Write a method get_full_name 
# that takes in a hash containing a first, last, and title. 
# The method should return a string 
# representing the hash's full name

# input type : string / hash
# output(what to return) type : strint + strint + string / hash

def get_full_name(hash)
    return hash["first"] + " " + hash["last"] + ', the ' + hash["title"]
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"