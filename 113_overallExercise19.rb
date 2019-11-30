# Overall Exercise 19 : Same Char Collapse
# Write a method same_char_collapse 
# that takes in a string and 
# returns a collapsed version of the string. 
# To collapse the string, we repeatedly delete 2 adjacent characters 
# that are the same until there are no such adjacent characters. 
# If there are multiple pairs that can be collapsed, 
# delete the leftmost pair. 
# For example, we take the following steps 
# to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

# input type : string (a word)
# output(to return) type : string(a new string collapsed - delete 2 adj same chars)

# My solution
# Step 1
def same_char_collapse(str)

    str = str.split("")
    print str 
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv

# ["z", "z", "z", "x", "a", "a", "x", "y"]
# ["u", "q", "r", "s", "s", "r", "q", "v", "t", "t"]


# Step 2
str = "zxaaxy" #=> zxxy
puts str[0...2] #=> zx
puts str[4..-1] #=> xy
puts str[0...2] + str[4..-1] #=> zxxy
puts str[2] #=> a
puts str[2+1] #=> a

puts str[0..1] #=> zx
puts str[4..-1] #=> xy
puts str[0..1] + str[4..-1] #=> zxxy


# Step 3
def same_char_collapse(str)

    i = 1
    new = []
    while i < str.length - 1

        pre_char = str[i-1]
        now_char = str[i]

        if pre_char != now_char
            new << pre_char
            i += 1
        else
            new << str[i+1..-1]
            break    
        end 

    end 

    print new

end 


puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv

puts "====="
# Step 4
def same_char_collapse(str)

    i = 1
    new = []
    while i < str.length - 1

        pre_char = str[i-1]
        now_char = str[i]

        if pre_char != now_char
            new << pre_char
            i += 1
        else
            new << str[i+1..-1]
            i = str.length
        end 

    end 
    str = new.join("")
    new = []
    print str

end 

puts same_char_collapse("zzzxaaxy")   #=> "zxaaxy"

puts same_char_collapse("zxaaxy") #=> "zxxy"

puts same_char_collapse("zxxy") #=> "zy"


# Step 5 : let's use index "char+char"

str = "zzzxaaxy"
puts str.include?("zz") #=> true
puts str.include?("xx") #=> false
puts str.include?("aa") #=> true
puts str.include?("yy") #=> false

puts str.index("zz") #=> 0
puts str.index("xx") #=> 
puts str.index("aa") #=> 4
puts str.index("yy") #=> 


# Step 5 : let's use index "char+char"
def same_char_collapse(str)

    counter = Hash.new(0)
    str.each_char do |char|
        counter[char] += 1
    end 
    
    unique = []
    counter.each_key do |k|
         unique << k+k
    end   
    print unique #=> ["zz", "xx", "aa", "yy"]

   
    unique.each do |ele|

        if str.include?(ele)

            i = 1
            new = []
            while i < str.length - 1
        
                pre_char = str[i-1]
                now_char = str[i]
        
                if pre_char != now_char
                    new << pre_char
                    i += 1
                else
                    new << str[i+1..-1]
                    i = str.length
                end 
        
            end 
            str = new.join("")
            new = []
            print str
        end 
    end 
end 


puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

# puts same_char_collapse("uqrssrqvtt") #=> "uv"
# # because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv



##################################################
##################################################
# SECOND ROUND DAY 2 #
##################################################
##################################################

# Step 1 
arr = ["zz", "xx", "aa", "yy"]

str = "zzzxaaxy"

arr.each_with_index do |ele, idx|
    puts str.include?(arr[idx])
end 

# puts str.include?(arr[0]) #=> true
# puts str.include?(arr[1]) #=> false
# puts str.include?(arr[2]) #=> true
# puts str.include?(arr[3]) #=> false

# puts str.index(arr[0]) #=> 0
# puts str.index(arr[1]) #=> 
# puts str.index(arr[2]) #=> 4
# puts str.index(arr[3]) #=> 

# Step 2 
arr = ["zz", "xx", "aa", "yy"]

str = "zzzxaaxy"

new = {}
arr.each_with_index do |ele, idx|
    if str.include?(arr[idx])
        new[arr[idx]] = str.index(arr[idx])
    end
end

puts new
# {"zz"=>0, "aa"=>4}

sorted = new.sort_by { |k, v| v}
puts sorted[0][1] #=> 0

# Step 3
arr = ["zz", "xx", "aa", "yy"]
str = "zzzxaaxy"

def same_char_collapse(str)
    #str = str[0...unique_check] + str[unique_check+2..-1]
end

def unique_check(word)

    counter = Hash.new(0)
    word.each_char do |char|
        counter[char] += 1
    end 
    
    unique = []
    counter.each_key do |k|
         unique << k+k
    end  
    #return unique

    new = {}
    unique.each_with_index do |ele, idx|
        if word.include?(unique[idx])
            new[unique[idx]] = word.index(unique[idx])
        end
    end

    puts new
    # {"zz"=>0, "aa"=>4}

    sorted = new.sort_by { |k, v| v}
    return sorted[0][1]
    
end

#print unique_check("zzzxaaxy") #=> ["zz", "xx", "aa", "yy"] 
print unique_check("zzzxaaxy") #=> 0


# Step 4
arr = ["zz", "xx", "aa", "yy"]
str = "zzzxaaxy"

def same_char_collapse(str)
    str = str[0...unique_check(str)] + str[unique_check(str)+2..-1]
    return str
end

def unique_check(word)

    counter = Hash.new(0)
    word.each_char do |char|
        counter[char] += 1
    end 
    
    unique = []
    counter.each_key do |k|
         unique << k+k
    end  
    #return unique

    new = {}
    unique.each_with_index do |ele, idx|
        if word.include?(unique[idx])
            new[unique[idx]] = word.index(unique[idx])
        end
    end

    puts new
    # {"zz"=>0, "aa"=>4}

    sorted = new.sort_by { |k, v| v}
    return sorted[0][1]
    
end

#print unique_check("zzzxaaxy") #=> ["zz", "xx", "aa", "yy"] 
#print unique_check("zzzxaaxy") #=> 0
print same_char_collapse("zzzxaaxy") #=> zxaaxy


# Step 5
def same_char_collapse(str)
    
   
    str = str[0...unique_check(str)] + str[unique_check(str)+2..-1]
    return str
end

def unique_check(word)

    counter = Hash.new(0)
    word.each_char do |char|
        counter[char] += 1
    end 
    
    unique = []
    counter.each_key do |k|
         unique << k+k
    end  
    #return unique

    new = {}
    unique.each_with_index do |ele, idx|
        if word.include?(unique[idx])
            new[unique[idx]] = word.index(unique[idx])
        end
    end

    puts new
    # {"zz"=>0, "aa"=>4}

    sorted = new.sort_by { |k, v| v}
    return sorted[0][1]
    
end

def unique(word)
    counter = Hash.new(0)
    word.each_char do |char|
        counter[char] += 1
    end 
    
    unique = []
    counter.each_key do |k|
         unique << k+k
    end  
    return unique
end 

#print unique_check("zzzxaaxy") #=> ["zz", "xx", "aa", "yy"] 
#print unique_check("zzzxaaxy") #=> 0
 print same_char_collapse("xaaxy") #=> zxaaxy
# print unique("zzzxaaxy") #=> ["zz", "xx", "aa", "yy"] 

puts "========================"
# Step 6 

arr = ["zz", "xx", "aa", "yy"]
str = "zzzxaaxy"

puts str.include?(arr[0]) #=> true
puts str.include?(arr[1]) #=> false
puts str.include?(arr[2]) #=> true
puts str.include?(arr[3]) #=> false

puts str.index(arr[0]) #=> 0
puts str.index(arr[1]) #=> 
puts str.index(arr[2]) #=> 4
puts str.index(arr[3]) #=> 

puts arr.length # 4

idx_box=[]
i = 0
while i < arr.length # i <= 3
    str.include?(arr[i])
    idx_box << str.index(arr[i])
    i += 1
end 
print idx_box
# [0, nil, 4, nil]

puts "========================"


##################################################
##################################################
# SECOND ROUND DAY 2 # I GOT MY OWN SOLUTION 
##################################################
##################################################

def same_char_collapse(str)
    
    unique = uniquebox(str)


    unique.each do |ele|
        # puts "=======ELE========="
        # puts ele
        while str.include?(ele)
            i = 1
            new = []
            while i < str.length - 1
        
                pre_char = str[i-1]
                now_char = str[i]
        
                if pre_char != now_char
                    new << pre_char
                    i += 1
                else
                    new << str[i+1..-1]
                    #i = str.length
                    break
                end 
            end 
            # puts "---NEW---"
            # print new
            str = new.join("")
            # puts "====JOINED STR===="
            # print str
            new = []
        end 
    end
    return str
end 

def uniquebox(word)
    counter = Hash.new(0)
    word.each_char do |char|
        counter[char] += 1
    end 
    
    unique = []
    counter.each_key do |k|
            unique << k+k
    end  
    return unique
end 

#puts uniquebox("zzzxaaxy")


puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy
###### 문제는 zxxy에서 xx라는 ele가 이미 지나간 뒤라, collapse가 안되! 

# puts same_char_collapse("uqrssrqvtt") #=> "uv"
# # because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv


################
#str.include?(ele) 이거 대신, {"zz"=>0, "aa"=>4} 여기서 value가 != 0 이면? 
# unique letter * 2 and count how many?

def same_char_collapse(str)
    counter = Hash.new(0)
    str.each_char do |char|
        counter[char] += 1
    end 
    #print counter # {"z"=>3, "x"=>2, "a"=>2, "y"=>1}

    unique = []
    counter.each_key do |k|
         unique << k+k
    end  
    print unique # ["zz", "xx", "aa", "yy"]

    new = {}
    unique.each do |ele|
        new[ele] = str.include?(ele)
    end
    return new
end 

puts same_char_collapse("zzzxaaxy")   #=> "zy"

# {"zz"=>true, "xx"=>false, "aa"=>true, "yy"=>false}


############# if new.has_value?(true) 
def same_char_collapse(str)
    counter = Hash.new(0)
    str.each_char do |char|
        counter[char] += 1
    end 
    #print counter # {"z"=>3, "x"=>2, "a"=>2, "y"=>1}

    unique = []
    counter.each_key do |k|
         unique << k+k
    end  
    print unique # ["zz", "xx", "aa", "yy"]

    new = {}
    unique.each do |ele|
        new[ele] = str.include?(ele)
    end
    #return new

    while new.has_value?(true)
        i = 1
        temp = []
        while i < str.length - 1
    
            pre_char = str[i-1]
            now_char = str[i]
    
            if pre_char != now_char
                temp << pre_char
                i += 1
            else
                temp << str[i+1..-1]
                #i = str.length
                break
            end 
        end 
        # puts "---NEW---"
        # print new
        str = temp.join("")
        # puts "====JOINED STR===="
        # print str
        temp = []

        unique.each do |ele|
            new[ele] = str.include?(ele)
        end
    end 
    return str
end 

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv


####### ARRANGE ####### I AM HAPPYYYYYYYYYYYYY !!!!!! 
def same_char_collapse(str)

    counter = Hash.new(0)
    str.each_char do |char|
        counter[char] += 1
    end 

    unique = []
    counter.each_key do |k|
         unique << k+k
    end  

    new = {}
    unique.each do |ele|
        new[ele] = str.include?(ele)
    end

    while new.has_value?(true)
        i = 1
        temp = []
        while i < str.length - 1
    
            pre_char = str[i-1]
            now_char = str[i]
    
            if pre_char != now_char
                temp << pre_char
                i += 1
            else
                temp << str[i+1..-1]
                #i = str.length
                break
            end 
        end 

        str = temp.join("")
        temp = []

        unique.each do |ele|
            new[ele] = str.include?(ele)
        end
    end 
    return str
end 

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv


##################################################
##################################################
# TEACHER's SOLUTION # 
##################################################
##################################################

def same_char_collapse(str)
    reducible = true
  
    while reducible
      chars = str.split("")
      reducible = false
  
      chars.each.with_index do |char, i|
        if chars[i] == chars[i + 1]
          chars[i] = ""
          chars[i + 1] = ""
          reducible = true
          break
        end
      end
  
      str = chars.join("")
    end
  
    return str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv


##################################################
##################################################
# EXPLANATION #
##################################################
##################################################

# Step 1
def same_char_collapse(str)
    chars = str.split("")
    chars.each.with_index do |char, i|
        if chars[i] == chars[i+1]
            # HOW TO DELETE????
            chars[i] = ""
            chars[i + 1] =""
            puts "======"
            break
        end
    end
    #print chars #["", "", "z", "x", "a", "a", "x", "y"]
    #puts chars.join("") # zxaaxy
    str = chars.join("")
    return str
end 

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

#["", "", "z", "x", "a", "a", "x", "y"]
# zxaaxy


# Step 2 : How to make it iterate? use "COLLAPSIBLE = TRUE" & WHILE
def same_char_collapse(str)

    collapsible = true
    while collapsible # collapsible = true 
        collapsible = false  # it means I don't need another iteration!
        # as soon as I enter into a while loop, I set it false

    ########################
        chars = str.split("")
        chars.each.with_index do |char, i|
            if chars[i] == chars[i+1]
                # HOW TO DELETE????
                chars[i] = ""
                chars[i + 1] =""
                collapsible = true ##############
                break
            end
        end
        #print chars #["", "", "z", "x", "a", "a", "x", "y"]
        #puts chars.join("") # zxaaxy
        str = chars.join("")
        #return str
    ########################
 
    end
    return str
end 

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy



arr = ["", "", "z", "x", "a", "a", "x", "y"]
# arr.each.with_index do |char, i|
#     # if chars[i] == chars[i+1]
#     #     # HOW TO DELETE????
#     #     chars[i] = ""
#     #     chars[i + 1] =""
#     #     collapsible = true ##############
#     #     break
#     # end
#     puts "=-=-="
#     print char
#     print char.join("")
puts "***********"
print arr.join("") # zxaaxy


# Practice
def same_char_collapse(str)
    collapsible = true

    while collapsible # HOW TO MAKE IT KEEP COLLAPSING?
        collapsible = false 

        chars = str.split("")
        chars.each.with_index do |char, i| # to consider 'leftmost pairs'
            if chars[i] == chars[i+1]
                chars[i] = "" # deleting a character
                chars[i+1] = "" # deleting a character
                collapsible = true ########## 이해가 안가는 파트는 여기
                break ########## 이해가 안가는 파트는 여기. true, break 이후 남은 뒤에 캐릭터들은 돌지 않는건가? ㅡㅡ? 
                ### break는 if 조건문 break 후, each iteration의 나머지는 그대로 출력
            end
        end
        #print chars
        #puts chars.join("")
        str = chars.join("") # while collapsible = true 면 다시 iteratin & if조건문 시작, false면 return!
    end
    return str
end 

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# ["z", "z", "z", "x", "a", "a", "x", "y"]
# zxaaxy
# zy