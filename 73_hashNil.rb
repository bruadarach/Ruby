# nil
#   represents "nothing" or "empty"
#   common appears as a default value

my_array = ["a", "b", "c"]
print my_array[2]
# c

# print does NOT represent nothing!
print my_array[3] # nothing

# use 'p' to show the data that actually is
p my_array[3] # nil
p my_array[100] # nil
p my_array[0] # "a"

my_hash = {"name" => "Lucky", "age" => 10}
p my_hash["name"] # "Lucky"
p my_hash["age"] # 10
p my_hash["location"] # nil
