# https://atcoder.jp/contests/abc185/tasks/abc185_c

l = gets.to_i

t=1
l-=1
11.times do
    t*=l
    l-=1
end
b=1
(1..11).each do |i|
    b*=i
end
puts t/b