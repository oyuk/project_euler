# -*- coding: utf-8 -*-
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.


def even_ n
  n/2
end

def odd_ n
  3*n+1
end

def collatz n
  
  loop_num = 1
  
  loop{

    return loop_num if n == 1

    if n.even?
      n = even_(n)
    else
      n = odd_(n)
    end

    loop_num+=1
  }

end

def calc

  length = 0
  ans = 0
  1.upto(1000000){|i|
    tmp =  collatz(i)
    # p tmp
    if length < tmp
      length = tmp 
      ans = i
    end
  }
  return ans,length
end


t = Time.now
p calc
p Time.now-t

# >> [837799, 525]
# >> 21.842578
