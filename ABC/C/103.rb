# https://atcoder.jp/contests/abc103/tasks/abc103_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

div = arr.inject(:lcm) - 1

ans = 0
arr.each do |a|
    ans += div%a
end

puts ans

# mod

# 別解

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

puts arr.map{|n|n-=1}.sum