# Hash Exercise 7 : Element Count
# Write a method element_count 
# that takes in an array and 
# returns a hash 
# representing the count of each element in the array.

# input type : array
# output(to return) type : number / hash

# My solution
def element_count(arr)

    # initialize 0 as needed to count
    count = Hash.new(0)
    arr.each do |c|
        count[c] += 1 
    end
    return count

end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}


def element_count(arr)

    # initialize 0 as needed to count
    count = Hash.new(0)
    arr.each { |c| count[c] += 1 }
    # do
    # end
    return count

end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}


# Teacher's solution
def element_count(arr)
    count = Hash.new(0)
    arr.each { |ele| count[ele] += 1 }
    return count
end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}


# Explanation

# brainstorming to solve the question.
# initialize 0, and then increment
hash = {"a" => 0, "b" => 0}
hash["a"] += 1
hash["a"] += 1
hash["b"] += 1
puts hash


def element_count(arr)
    count = Hash.new(0)
    arr.each { |ele| count[ele] += 1 }
    return count
end 
puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}
