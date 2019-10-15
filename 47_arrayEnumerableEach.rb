# Enumerables 

### 1. array enumerables
    # 1) .each
        # (1) arr.each { |element| puts element}
            # 반복자 - iterator
            # 앞선 반복문 수업에서 while과 for 문을 알아봤다. 
            # 하지만 ruby에서는 이런 것들보다는 반복자라는 것을 더 많이 쓴다. 
            # 다음 코드를 보자. 결과는 배열의 값을 하나씩 출력한다.
                # arr = [1, 2, 3, 4, 5]
                # arr.each { |a| puts a }
            # arr.each : each는 배열에 내장되어 있는 반복자(iterator)다. 
                       # 이 반복자 뒤에 따라오는 { |a| puts a } 가 배열의 원자 수 만큼 반복된다.
            # { |a| puts a } : { |a| puts a }는 이름이 없는 메소드를 의미한다. 
                             # 또한 배열이 each라는 메소드를 지원하는 것은 배열이 enumerator를 포함(include)하기 때문인데, 이 또한 여기서 다루지 않는다. 
                             # 그리고 arr.each라는 방식으로 메소드를 호출할 수 있는 이유는 객체지향 토픽에서 살펴볼 예정이다. 
                             # 프로그래밍 경험이 없다면 지금은 이해가 되지 않는 것이 당연하다. 차차로 알 수 있는 내용이다.
            # |a| : 파이프(|) 사이의 a는 인자다. 
                  # 반복이 실행될 때마다 인자 a에는 배열의 값이 담겨진다. 
                  # a는 인자의 이름이기 때문에 다른 이름으로 변경할 수 있다. 
                  # 하지만 그 인자를 사용하는 코드의 이름도 다음과 같이 변경돼야 한다. { |b| puts b }
            # puts a : 인자 a (|a|)의 값이 변수 a에 할당 됐기때문에 puts a는 각각의 원소를 화면에 출력한다.
                
        # (2) arr.each do |element|
        #       puts elements
        #     end
            # 위 (1)의 코드는 아래(2)와 같이 사용할 수도 있다. do와 end가 열리는 중괄호({)와 닫히는 중괄호(})의 역할을 하고 있다
            # [1, 2, 3, 4, 5].each do |a| puts "This is #{a}" end

    # 2) .each_with_index

### 2. string enumerables
    # 3) .each_char
    # 4) .each_char.with_index


# RECAP : ITERATION? - make an old way loop?
# i = 0
# while i < months.length
#     month = months[i]
#     puts month

#     i += 1
# end

# If we are only interested in the iterator method, 
# there is no need to define the whole class. 
# Instead, we can simply write an iterator method that accepts the from, to, and by parameters. 
# Instead of making this a global function, let’s define it in a module of its own:


### 1. array enumerables - 1) .each - (1) arr.each
# if you want to run "only a single line of code" in your block, prefer to use this notation 
# a single line "each" plays an entire loop below
months = ["Jan", "Feb", "Mar", "Apr"]

months.each { |month| puts month } 
# Jan
# Feb
# Mar
# Apr

# puts month

months = ["Jan", "Feb", "Mar", "Apr"]

months.each { |month| print month } 
# JanFebMarApr

#   - a block of code within Curly brackets {}, specifiying parameters inside
#   - |month| parameter behaves like a variable..? month is a variable or argument? 
# QUESTION??? How to  reuse or print the new variable 'month' then? 
#             what is the function of |month|? 
# 만약, .each가 python의 lambda라면... month만 따로 부를 수 없는 이유가 있겠지?
# 아니면 month를 기존 함수 방식의 i라고 생각해봐. 함수 과정 안에 있는 i를 모든 과정 후 따로 variable로 쓸 수 없잖아? only for iteration 그래서 따로 못부르는 것 아닐까?  
    # why "puts month" is not working?
    # arr = [1, 2, 3, 4, 5]
    # arr.each { |a| puts a }
    # puts a   <--------------- this part is not working, why?

    # puts "hello world" # "puts" invoked on self, with one string arg
    # Math.sqrt(2) # "sqrt" invoked on object Math with one arg
    # message.length # "length" invoked on object message; no args
    # a.each {|x| p x } # "each" invoked on object a, with an associated block


### 1. array enumerables - 1) .each - (2) .each do |a| puts "This is #{a}" end
# (2) if you want to have multiple lines, including in your block, then use this version
months = ["Jan", "Feb", "Mar", "Apr"]

months.each do |month|
    puts month
    puts "---"
end
# Jan
# ---
# Feb
# ---
# Mar
# ---
# Apr
# ---


### 1. array enumerables - 2) .each_with_index
# this method will pass in two pieces of data to our block
# one is the element like before, and the other is followed by the index of this element 
months = ["Jan", "Feb", "Mar", "Apr"]

months.each_with_index do |month, idx|
    puts month
    puts idx
    puts "---"
end
# Jan
# 0
# ---
# Feb
# 1
# ---
# Mar
# 2
# ---
# Apr
# 3
# ---

### 2. string enumerables - 3) .each_char
sentence = "hello world"
sentence.each_char do |char|
    puts char 
end
# h
# e
# l
# l
# o
 
# w
# o
# r
# l
# d


### 2. string enumerables - 4) .each_char.with_index
sentence = "hello world"
sentence.each_char.with_index do |char, idx|
    puts char 
    puts idx
    puts "---"
end
# h
# 0
# ---
# e
# 1
# ---
# l
# 2
# ---
# l
# 3
# ---
# o
# 4
# ---
 
# 5
# ---
# w
# 6
# ---
# o
# 7
# ---
# r
# 8
# ---
# l
# 9
# ---
# d
# 10
# ---
