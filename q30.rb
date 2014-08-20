# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


ans = 0
temp = 0

2.upto(10**6){|i|
  temp = i.to_s.each_char.map(&:to_i).inject(0){|sum,j| sum += j**5}
  ans += temp if i == temp
  temp = 0
}

ans                             # => 443839