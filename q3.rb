# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require "prime"

# p Prime.each(475143){|i| i}

#  http://stackoverflow.com/questions/20790654/project-euler-3-in-ruby
#p 600851475143.prime_division.last[0]

max = 997799
array = (2..max).to_a

2.upto(Math.sqrt(max)){|num|
  array.reject!{|elem|
    elem % num == 0 && elem > num
  }
}

p array
