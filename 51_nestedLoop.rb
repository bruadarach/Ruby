# Nested Loops 1

(1..3).each do |num|
    puts num
end
# 1
# 2
# 3

(1..3).each do |num1|
    puts num1

    (1..5).each do |num2|
        puts "     " +  num2.to_s # .to_s : convert num2 to string
    end
end
# 1
#      1
#      2
#      3
#      4
#      5
# 2
#      1
#      2
#      3
#      4
#      5
# 3
#      1
#      2
#      3
#      4
#      5

(1..3).each do |num1|
    (1..5).each do |num2|
        puts num1.to_s + "     " +  num2.to_s # .to_s : convert num2 to string
    end
end

# 1     1
# 1     2
# 1     3
# 1     4
# 1     5
# 2     1
# 2     2
# 2     3
# 2     4
# 2     5
# 3     1
# 3     2
# 3     3
# 3     4
# 3     5


# Nested Loops 2
arr = ["a", "b", "c", "d"]

arr.each do |ele|
    puts ele 
end
# a
# b
# c
# d

# below we iterate through all possible pairs with duplicates
arr = ["a", "b", "c", "d"]

arr.each do |ele1|
    arr.each do |ele2|
    puts ele1 + ele2 # string concatenation
    end
end
# aa
# ab
# ac
# ad
# ba
# bb
# bc
# bd
# ca
# cb
# cc
# cd
# da
# db
# dc
# dd

# below we iterate through only unique paris
arr = ["a", "b", "c", "d"]

arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
        if idx2 > idx1
            puts ele1 + ele2 # string concatenation
            puts idx1.to_s + "  " + idx2.to_s
            puts "-------"
        end
    end
end
# ab
# ac
# ad
# bc
# bd
# cd

# ab
# 0  1
# -------
# ac
# 0  2
# -------
# ad
# 0  3
# -------
# bc
# 1  2
# -------
# bd
# 1  3
# -------
# cd
# 2  3
# -------

# if idx2 is greater than idx1, then idx2 is never referring to what idx1 referred to previously