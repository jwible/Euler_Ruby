answer=0
x=20

def check(x)
  (11..20).each do |y|              #11-20 chosen because 20%10=0, 18%9==0 down to 1. 11 through 20 are unique
    return false if x%y != 0
  end
end


while answer == 0
  if check(x) != false
    answer = x
  end
  x+=20                             #to limit the loops, if you count by 20's it wo
end
puts answer
