# https://atcoder.jp/contests/arc068/tasks/arc068_a

x = gets.to_i

t = x/11
m = x%11
if m==0
    puts (t*2)
elsif m <= 6
    puts 1+(t*2)
else
    puts 2+(t*2)
end