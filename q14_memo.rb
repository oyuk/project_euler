
$memo = Array.new(1000000){-1}

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

    if $memo[n].to_i != -1 && $memo[n] != nil
        # p "#{n} = #{$memo[n]}"
     return  loop_num-1+$memo[n].to_i
    elsif n.even?
      n = even_(n)
    else
      n = odd_(n)
    end
        # p "#{loop_num} #{n}"
    loop_num+=1
  }

end

def calc

  length = 0
  ans = 0
  1.upto(1000000){|i|
    tmp = collatz(i)
    $memo[i] = tmp            
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
# >> 2.546509
# >> 1000001
