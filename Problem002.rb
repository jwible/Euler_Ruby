x=1
y=1
z=2
answer = 2

loop do
  x=y+z
  break if x>4000000
  y=x+z
  break if x>4000000
  z=y+x
  break if x>4000000
  answer+=z
end
p z
