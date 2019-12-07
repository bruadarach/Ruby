# Write a method, adult_in_group?(people), that accepts an array containing people.
# The method should return true if there is at least 1 person with an age of 18 or greater.
# The method should return false otherwise.

def adult_in_group?(hash)

    hash.each do |ele|
        if ele.values[1] >= 18
            return true
        end 
    end
    return false

end

people_1 = [
    {name: "Jack", age: 17},
    {name: "Jill", age: 21},
    {name: "Alice", age: 15},
    {name: "Bob", age: 16}
]
p adult_in_group?(people_1)    # => true

people_2 = [
    {name: "Jane", age: 12},
    {name: "John", age: 13},
    {name: "Ashley", age: 10},
    {name: "Bill", age: 16}
]
p adult_in_group?(people_2)    # => false


# Practice
people_1 = [
    {name: "Jack", age: 17},
    {name: "Jill", age: 21},
    {name: "Alice", age: 15},
    {name: "Bob", age: 16}
]

p people_1[0]
p people_1[1]
p people_1[2]
p people_1[3]
# {:name=>"Jack", :age=>17}
# {:name=>"Jill", :age=>21}
# {:name=>"Alice", :age=>15}
# {:name=>"Bob", :age=>16}


# keys / values 
p people_1[0][0] #=> nil
p people_1[0]["name"] #=> nil 
p people_1[0].keys # [:name, :age]
p people_1[0].values # ["Jack", 17]

# (????)
p people_1[0].has_key?("name") #=> false
p people_1[0].has_key?(":name") #=> false
p people_1[0].has_key?("name:") #=> false
p people_1[0].keys[0] #=> :name

p people_1[0].has_key?("Jack") #=> false
p people_1[0].has_value?("Jack") #=> true

p people_1[0].has_value?(17) #=> true
p people_1[0].has_value?(50) #=> false
p people_1[0].values[0] #=> "Jack"
p people_1[0].values[1] #=> 17
p people_1[0].values

# length
p people_1.length # 4


# Teacher's solution
def adult_in_group?(people)
    people.any? { |person| person[:age] >= 18 }
end


people_1 = [
    {name: "Jack", age: 17},
    {name: "Jill", age: 21},
    {name: "Alice", age: 15},
    {name: "Bob", age: 16}
]
p adult_in_group?(people_1)    # => true

people_2 = [
    {name: "Jane", age: 12},
    {name: "John", age: 13},
    {name: "Ashley", age: 10},
    {name: "Bill", age: 16}
]
p adult_in_group?(people_2)    # => false

##### any? #####
# Return true when all at least one element results in true when passed into the block.
puts [1,1,2].any? { |i| i.even? } #=> at least one is true? 
# true 
puts [1,1,1].any? { |i| i.even? }
# false

