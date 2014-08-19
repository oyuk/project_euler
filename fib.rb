class Test
  @@memo = [0,1]

  def fib n

    if @@memo.size <= n
      @@memo[n] = @@memo[n-1]+@@memo[n-2]
    end
    
    @@memo[n]
  end
end



f1,f2 = 0,1
1.upto(100){|i|
  f1,f2 = f2,f2+f1
  i+=1
}
