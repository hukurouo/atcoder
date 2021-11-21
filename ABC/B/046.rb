# https://atcoder.jp/contests/abc046/tasks/abc046_b

n,k = gets.chomp.split.map(&:to_i);

ans = k
(n-1).times do |i|
    ans *= (k-1)
end
puts ans