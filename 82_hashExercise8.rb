# Hash Exercise 8 : Select Upcase Keys
# Write a method select_upcase_keys 
# that takes in a hash and 
# returns a new hash containing key-value pairs of the original hash 
# that had uppercase keys. 
# You can assume that the keys will always be strings.

# input type : hash
# output(to return) type : string uppercase keys / hash

# My solution
def select_upcase_keys(hash)
    
    new = {}
    hash.each do |k, v|
        if k == k.upcase
        new[k] = v
        end
    end 
    return new

end

print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4}) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts


# Teacher's solution
def select_upcase_keys(hash)
selected = {}

hash.each do |k, v|
    if k == k.upcase
    selected[k] = v
    end
end

return selected
end

print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4})
# => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts


# Explanation
# basics of adding a pair into a hash
hash = {}
hash["NAME"] = "academy"
puts hash

def select_upcase_keys(hash)
    new_hash = {}

    hash.each do |k, v|
        if k == k.upcase
            new_hash[k] = v 
        end 
    end 
    return new_hash
end 

print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4})
# => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts