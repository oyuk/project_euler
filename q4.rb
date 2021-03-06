# -*- coding: utf-8 -*-
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


ans = 0

999.downto(100){|i|
  i.downto(100){|j|
     n = i*j
    if n.to_s == n.to_s.reverse && ans < n
      ans = n
      p "#{i},#{j}"
    end
  }
}

p ans 
