# Hash Exercise 9 : Hand Score
# Write a method hand_score 
# that takes in a string representing a hand of cards and 
# returns it's total score. 
# You can assume the letters in the string are 
# only A, K, Q, J. 
# A is worth 4 points, 
# K is 3 points, Q is 2 points, and 
# J is 1 point. 
# The letters of the input string not necessarily uppercase.

# input type : string 
# output(to return) type : score

# My solution
def hand_score(hand)

    hand = hand.upcase

    # initialize 0
    count = 0
    four = "A"
    three = "K"
    two = "Q"
    one = "J"

    hand.each_char do |card|

        if four.include?(card)
            count += 4
        elsif three.include?(card)
            count += 3
        elsif two.include?(card)
            count += 2
        elsif one.include?(card)
            count += 1
        end
    end
    return count
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9


# Teacher's solution
def hand_score(hand)
    points = {
      "A"=>4,
      "K"=>3,
      "Q"=>2,
      "J"=>1
    }
  
    score = 0
    hand.each_char { |char| score += points[char.upcase] }
    return score
  end
  
  puts hand_score("AQAJ") #=> 11
  puts hand_score("jJka") #=> 9

# Explanation
def hand_score(hand)
    points = {
      "A"=>4,
      "K"=>3,
      "Q"=>2,
      "J"=>1
    }
  
    score = 0
    ##### ERROR OCCURS : `due to nil class based on upcase/downcase
    # hand.each_char { |char| score += points[char] }
    hand.each_char { |char| score += points[char.upcase] }
    return score
  end
  
  puts hand_score("AQAJ") #=> 11
  puts hand_score("jJka") #=> 9

##### ERROR OCCURS : `due to nil class based on upcase/downcase
##### block in hand_score': undefined method `+' for nil:NilClass (NoMethodError)


def hand_score(hand)

    points = {
        "A" => 4,
        "K" => 3,
        "Q" => 2,
        "J" => 1
    }

    count = 0

    hand.each_char { |hand_each| count += points[hand_each.upcase] }
    return count
    
end 

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9s

