
def prefix x,len=1
  x[0,len]
end

prefix("abc")                   # => "a"
prefix("abc",2)                 # => "ab"
prefix("abc",3)                 # => "abc"


