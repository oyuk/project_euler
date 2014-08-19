# -*- coding: utf-8 -*-
# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

class Q20

  def fractorial n 
    n.downto(1).inject(&:*)
  end

  def sum_of_digits n
    fractorial(n).to_s.each_char.map(&:to_i).inject(:+)
  end
end

q = Q20.new
p q.sum_of_digits(100)
# >> 648
