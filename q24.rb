# A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210

# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

 array =  (0..9).to_a # !> assigned but unused variable - array
j = 1 # !> assigned but unused variable - j
 max = 1000000 # !> assigned but unused variable - max
ans = []

# array.permutation(10).each{|i|
#   if j == max
#     ans = i
#     break
#   end
#   j += 1
# }

# p ans.join



class Integer
  def !
    return 1 if self.zero?
    (1..self).inject(:*)
  end
end


num = 1000000-1

a = (0..9).to_a

9.downto(0){|i|

  permu = i.!

  p "permutation #{i}!=#{permu} num:#{num}"

  ans_digit = num/permu
  num = num % permu

  p "ans_digit: #{ans_digit}  num:#{num}"
  puts "\n"
  p a
  ans.push(a.delete_at(ans_digit))

}

p ans

# >> "permutation 9!=362880 num:999999"
# >> "ans_digit: 2  num:274239"
# >> 
# >> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# >> "permutation 8!=40320 num:274239"
# >> "ans_digit: 6  num:32319"
# >> 
# >> [0, 1, 3, 4, 5, 6, 7, 8, 9]
# >> "permutation 7!=5040 num:32319"
# >> "ans_digit: 6  num:2079"
# >> 
# >> [0, 1, 3, 4, 5, 6, 8, 9]
# >> "permutation 6!=720 num:2079"
# >> "ans_digit: 2  num:639"
# >> 
# >> [0, 1, 3, 4, 5, 6, 9]
# >> "permutation 5!=120 num:639"
# >> "ans_digit: 5  num:39"
# >> 
# >> [0, 1, 4, 5, 6, 9]
# >> "permutation 4!=24 num:39"
# >> "ans_digit: 1  num:15"
# >> 
# >> [0, 1, 4, 5, 6]
# >> "permutation 3!=6 num:15"
# >> "ans_digit: 2  num:3"
# >> 
# >> [0, 4, 5, 6]
# >> "permutation 2!=2 num:3"
# >> "ans_digit: 1  num:1"
# >> 
# >> [0, 4, 6]
# >> "permutation 1!=1 num:1"
# >> "ans_digit: 1  num:0"
# >> 
# >> [0, 6]
# >> "permutation 0!=1 num:0"
# >> "ans_digit: 0  num:0"
# >> 
# >> [0]
# >> [2, 7, 8, 3, 9, 1, 5, 4, 6, 0]
