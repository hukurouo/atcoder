# https://atcoder.jp/contests/abc095/tasks/arc096_a

a,b,c,x,y = gets.chomp.split.map(&:to_i);

ans = Float::INFINITY
N=[x,y].max+1
N.times do |i|
    money = c*i*2
    money += a*(x-i) if x>i
    money += b*(y-i) if y>i
    ans = [ans,money].min
end
puts ans