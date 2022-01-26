# https://atcoder.jp/contests/abc180/tasks/abc180_d

x,y,a,b = gets.chomp.split.map(&:to_i)

exp = 0
while x*(a-1) < b && x*a < y
    x*=a
    exp+=1
end

puts exp + (y-x-1)/b