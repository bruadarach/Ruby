# Hash Exercise 4 : Retrieve Values
# Write a method retrieve_values 
# that takes in two hashes and a key. 
# The method should return an array 
# containing the values from the two hashes 
# that correspond with the given key.


# input type : string / two hashes + a key
# output(to return) type : string / array

# My solution
##### (?) hash input 인데, return hash[key] 하면 바로 array로 변환되서 반환이 되네... 어떻게 된거지? 
def retrieve_values(hash1, hash2, key)
    return hash1[key], hash2[key]
end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts


# ? 질문! 
##### (?) hash input 인데, return hash[key] 하면 바로 array로 변환되서 반환이 되네... 어떻게 된거지? 
def retrieve_values(hash1, hash2, key)
    puts hash1[key], hash2[key]
    # Fido
    # Spot

    # brown
    # white

    print hash1[key], hash2[key]
    # FidoSpot
    # brownwhite

    p hash1[key], hash2[key]
    # "Fido"
    # "Spot"

    # "brown"
    # "white"

    return hash1[key], hash2[key]
    # ["Fido", "Spot"]
    # ["brown", "white"]

end
dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts


# Practice
puts "=================================="

dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}

# put VS. print : line-spacing
puts dog1["name"], dog2["name"]
# Fido
# Spot
puts "-----"

print dog1["name"], dog2["name"]
# FidoSpot
puts "-----"

# p : wiht " " / " value "
p dog1["name"], dog2["name"]
# "Fido"
# "Spot"
puts "-----"

puts "=================================="

# Teacher's solution
def retrieve_values(hash1, hash2, key)
    val1 = hash1[key]
    val2 = hash2[key]
    return [val1, val2]
end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts


# Explanation
def retrieve_values(hash1, hash2, key)
    val1 = hash1[key]
    val2 = hash2[key]

    puts val1 # brown
    p val1 # "brown"
    #return [val1, val2]
end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts


# hash input을 return 하면 바로 array로 나오는지 실험 중!
# return으로 키 1개면 그냥 value만 프린트됨
def retrieve_values(hash1)
    return hash1["name"]
end 
dog1 = {"name"=>"Lucky", "color"=>"brown"}
print retrieve_values(dog1)
# Lucky


# hash input을 return 하면 바로 array로 나오는지 실험 중!
# return으로 키 2개면, array로 리턴됨! 
def retrieve_values(hash1)
    return hash1["name"], hash1["name"]
end 
dog1 = {"name"=>"Lucky", "color"=>"brown"}
print retrieve_values(dog1)
# ["Lucky", "Lucky"]


# Explanation
def retrieve_values(hash1, hash2, key)
    val1 = hash1[key]
    val2 = hash2[key]
    return [val1, val2]
end 

dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts