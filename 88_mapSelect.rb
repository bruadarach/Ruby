# Array-Giving Enumerables
#    map
#    select

arr = ["a", "b", "c", "d"]

new_arr = []
arr.each { |ele| new_arr << ele.upcase + "!" }
print new_arr
puts
# "A!", "B!", "C!", "D!"]


# a cleaner way to do the same process
# Use "map"
# no need to create a new array to put a new value and shovel into it!
arr1 = ["a", "b", "c", "d"]
new_arr1 = arr.map { |ele| ele.upcase + "!" }
print new_arr1
puts
# ["A!", "B!", "C!", "D!"]


##### EXPLANATION #####
# new_arr = []
# arr.each { |ele| new_arr << ele.upcase + "!" }

# map = [] + << arr.map { |what to iterate| which form you want to add }
# => new_arr1 = arr.map { |ele| ele.upcase + "!" }


arr2 = ["a", "b", "c", "d"]
new_arr2 = arr.map { |ele| ele.upcase + ele.upcase }
print new_arr2
puts
# ["AA", "BB", "CC", "DD"]


# Use 'select'
nums = [1,2,3,4,5,6]

evens = []

nums.each do |num|
    if num % 2 == 0
        evens << num
    end 
end 
print evens
puts
# [2, 4, 6]

arr2 = ["a", "b", "c", "d"]


# Use 'select'
nums = [1,2,3,4,5,6]
evens = nums.select { |ele| ele % 2 == 0 } # boolean check and select 
print evens
puts
# [2, 4, 6]


# select = [] + boolean check if num.select { |iteration| (if) check condition }
nums = [1,2,3,4,5,6]
odds = nums.select { |ele| ele % 2 != 0 }
print odds 
puts
# [1, 3, 5]


# Addtional explanation
# purpose of 'each' = repeat/iterate
# purpose of 'map' = similar to 'each', but change the element of an array
fruit = ['peach', 'banana', 'pineapple']
fruit = fruit.map { |e| e + ' is delicious' }
puts fruit
# peach is delicious
# banana is delicious
# pineapple is delicious

fruit = ['peach', 'banana', 'pineapple']
fruittbasket = fruit.map { |e| e + ' is delicious' }
print fruittbasket
puts
# ["peach is delicious", "banana is delicious", "pineapple is delicious"]