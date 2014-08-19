# -*- coding: utf-8 -*-
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

require "prime"
require_relative './p'

class Integer
  
  def divisor_sum
    
    array = []
    self.prime_division.each {|i|
      i[1].times{
        array.push(i[0])
      }
    }

    count = [1]
    1.upto(array.size - 1){|i|

      array.combination(i).each {|c|
        count.push(c.inject(:*))
        }
    }
    count.uniq.inject(:+)
  end
end

ans = 0

1.upto(10000){|i|                

  d = i.divisor_sum
  ans += d if i == d.divisor_sum && i != i.divisor_sum
}

ans                             # => 31626
