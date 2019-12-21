# different memory address despite the same content
word_1 = "boot"
word_2 = "boot"

p word_1.object_id
p word_2.object_id
# 70148786645120 #=> memory address pointing to
# 70148786645100 #=> memory address pointing to


# Change the content
word_1[3]="m"
p word_1
# "boom"

p word_2
# "boot"


### HOW THE UNDERLYING MEMORY SET UP???
word_1 = "cat"
word_2 = word_1

p word_1
p word_2
"cat"
"cat"

word_1.object_id
word_2.object_id
# 70251865951140 # refering to the same address!!! 
# 70251865951100 # refering to the same address!!! 


word_1[0] = "r"
p word_1
# rat
p word_2
# rat  #=> word_2 is automatically changed!


### HOW VARIABLES REACT UNDER THE HOOD
str = "hello"
p str.object_id
# 70221121536240

# Changing the content, but NOT CHANGING the memory location address itself!
str.upcase! # mutate the data # pointing to the same address
p str
# "HELLO"

p str.object_id
# 70211692996700


### After reassingment, it does not point to the same location address! 
str = "hello"
p str.object_id
# 70096596860680

# reassin the variable, the object id is actually changed!
str = "bye" # reassign the data # pointin to a new address (=redirecting)
p str.object_id
# 70173403438340

###=> THEREFORE, reassigning != mutation!!


# e.g.) array
# same values & pointing addresses
arr_1 = [1,2]
arr_2 = arr_1

# mutation 
arr_1 << 3 
arr_1
arr_2 # also changed!!! 


# different values & pointing addresses
arr_1 = [1,2]
arr_2 = [1,2]

p arr_1.object_id
p arr_2.object_id
# 70310154197420
# 70310154197400

arr_1 << 3
arr_2 # UNCHANGED!!!! totally different array from arr_1!