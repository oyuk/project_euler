# -*- coding: utf-8 -*-
# The Fibonacci sequence is defined by the recurrence relation:

# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:

# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.

# What is the first term in the Fibonacci sequence to contain 1000 digits?


class Test
  @@memo = [0,1]

  def fib n
    if @@memo.size <= n
      @@memo[n] = @@memo[n-1]+@@memo[n-2]
    end
    
    @@memo[n]
  end

end

t = Test.new
i = 0

loop do
  temp = t.fib(i)

  break if temp.to_s.size >= 1000

  i+=1
end

p i
# >> 4782
