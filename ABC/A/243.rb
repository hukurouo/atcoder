# https://atcoder.jp/contests/abc243/tasks/abc243_a

n,a,b,c = gets.chomp.split.map(&:to_i)

i=0
t=0
while true
  if i%3==0
    t += a
  elsif i%3==1
    t+=b
  else
    t+=c
  end
  if t > n
    if i%3==0
      puts "F"
    elsif i%3==1
      puts "M"
    else
      puts "T"
    end
    exit
  end
  i+=1
end