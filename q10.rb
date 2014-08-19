# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.




require "prime"


ans = 0

Prime.each(2000000){|pr|
  ans += pr
}
p ans

# >> 142913828922
