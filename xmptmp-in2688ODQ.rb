# A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210

# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

array =  (0..9).to_a
j = 0
max = 1000000
array.permutation(9).each{|i|
  break if j == max
  p i
  j += 1
}

p j


# >> [0, 1, 2, 3]
# >> [0, 1, 3, 2]
# >> [0, 2, 1, 3]
# >> [0, 2, 3, 1]
# >> [0, 3, 1, 2]
# >> [0, 3, 2, 1]
# >> [1, 0, 2, 3]
# >> [1, 0, 3, 2]
# >> [1, 2, 0, 3]
# >> [1, 2, 3, 0]
# >> [1, 3, 0, 2]
# >> [1, 3, 2, 0]
# >> [2, 0, 1, 3]
# >> [2, 0, 3, 1]
# >> [2, 1, 0, 3]
# >> [2, 1, 3, 0]
# >> [2, 3, 0, 1]
# >> [2, 3, 1, 0]
# >> [3, 0, 1, 2]
# >> [3, 0, 2, 1]
# >> [3, 1, 0, 2]
# >> [3, 1, 2, 0]
# >> [3, 2, 0, 1]
# >> [3, 2, 1, 0]
