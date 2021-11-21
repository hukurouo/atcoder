# https://atcoder.jp/contests/abc055/tasks/abc055_b

N = gets.to_i
MOD = 10**9 + 7

power = 1
(1..N).each do |n|
    power = (power*n) % MOD
end
puts power