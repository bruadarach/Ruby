# 2-Dimensional Arrays

arr = [
    ["a", "b", "c"],
    ["d", "e"],
    ["f", "g", "h"],
]

puts arr
# a
# b
# c
# d
# e
# f
# g
# h

print arr
# [["a", "b", "c"], ["d", "e"], ["f", "g", "h"]]

print arr.length
# 3

print arr[0]
# ["a", "b", "c"]

subArr= arr[1]
print subArr[1]
# e

print arr[1][1]
# e


arr.each do |subArr|
    print subArr
    puts
end
# ["a", "b", "c"]
# ["d", "e"]
# ["f", "g", "h"]

arr.each do |subArr|
    print subArr
    puts
    subArr.each do |ele|    
        puts ele
    end
    puts
end

# ["a", "b", "c"]
# a
# b
# c

# ["d", "e"]
# d
# e

# ["f", "g", "h"]
# f
# g
# h