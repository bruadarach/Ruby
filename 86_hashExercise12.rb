# Hash Exercise 12 : Unique Elements
# Write a method unique_elements 
# that takes in an array and 
# returns a new array where all duplicate elements are removed. 
# Solve this using a hash.

# input type : array
# output(to return) type : duplicated removed + use a hash / new array

# My solution - I didn't use a hash!
##### Hint: all keys of a hash are automatically unique

def unique_elements(arr)

    # hash count -> duplicate removed -> return a new array
    new = []

    # count = Hash.new(0) # create {} with default value 0
    arr.each do |ele|
        if !new.include?(ele)
            new << ele
        end
    end
    # print count # {"a"=>3, "b"=>2, "c"=>1}

    return new 
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts


# Summary I
def unique_elements(arr)

    new = []

    arr.each do |ele|
        if !new.include?(ele)
            new << ele
        end
    end

    return new 
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts


# Summary II
def unique_elements(arr)

    counter = Hash.new(0)
    arr.each { |ele| counter[ele] += 1 }
    # puts counter
    # {"a"=>3, "b"=>2, "c"=>1}
    return counter.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts


# Summary III
def unique_elements(arr)

    # counter = Hash.new(0)
    counter = {}
    arr.each { |ele| counter[ele] = true }
    # puts counter
    # {"a"=>3, "b"=>2, "c"=>1}
    return counter.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts


# Teacher's solution
def unique_elements(arr)
    hash_elements = {}
    arr.each { |ele| hash_elements[ele] = true }
    return hash_elements.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts


# Explanation

# Why { |ele| hash[ele] = true } true를 쓰는 이유에 대한 설명
# duplicated keys in a hash? what to be a final value? a value assigned lately
hash = {}
hash["a"] = "one"
hash["a"] = "two"
puts hash
# {"a"=>"two"}

hash = {}
hash["b"] = "three"
hash["b"] = "four"
puts hash
# {"b"=>"four"}

def unique_elements(arr)

    hash = {}
    arr.each { |ele| hash[ele] = true } # hash[ele] = true 
    # puts hash
    # {"a"=>true, "b"=>true, "c"=>true}
    return hash.keys

end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
