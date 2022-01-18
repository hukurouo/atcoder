# https://atcoder.jp/contests/arc113/tasks/arc113_b

a,b,c = gets.chomp.split.map(&:to_i)

a = a%10
b = b%4
pow = 0
if c==1
    pow = b+4
else
    c = c%2 + 2
    pow = (b**c)%4 + 4 
end
puts a**pow % 10