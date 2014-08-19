# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require "prime"

hash = Hash.new
ans = 1

(2..10).each{|i|
  temp = i.prime_division

  temp.each{|elem|
    hash[elem[0]] = elem[1] if hash[elem[0]] == nil || elem[1] > hash[elem[0]]
  }

}

p hash

hash.each_pair{|key,value|
  ans *= key ** value
}
p ans

# >> {2=>3, 3=>2, 5=>1, 7=>1}
# >> 2520
