# Boolean Data Type Lecture

# Operations : 
# ! (not)
# && (and)
# || (or)

puts true # true
puts !true # false
puts !false # true

# AND && 하나라도 false면 false
# Only gives back true when both sides are true.
puts false && false # false
puts false && true # false
puts true && false # false
puts true && true # true

# OR || 하나라도 true면 true
# One of both is true, it gives true. 
puts false || false # false
puts false || true # true 
puts true || false # true
puts true || true # true

