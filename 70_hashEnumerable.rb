# Hash enumerables
# .each
# .each_key
# .each_value

pizza = {
    "style" => "New York",
    "slices" => 8,
    "diameter" => "15 inches",
    "toppings" => ["mushrooms", "green peppers"],
    "is_tasty" => true
}

# reiterate with .each, and print key & value
pizza.each do |k , v|
    puts k 
    puts v  
    puts "----"
end
# style
# New York
# ----
# slices
# 8
# ----
# diameter
# 15 inches
# ----
# toppings
# mushrooms
# green peppers
# ----
# is_tasty
# true
# ----

# .each_key do |k|
pizza.each_key do |k|
    puts k
end
# style
# slices
# diameter
# toppings
# is_tasty

# |any name|
pizza.each_key do |thing|
    puts thing
end
# style
# slices
# diameter
# toppings
# is_tasty

pizza.each_value do |val|
    puts val
end 
# New York
# 8
# 15 inches
# mushrooms
# green peppers
# true