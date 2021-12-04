# https://atcoder.jp/contests/abc065/tasks/arc076_a

N,M = gets.chomp.split.map(&:to_i)

if (N-M).abs > 1
    puts 0
    exit
end

MOD = 10**9 + 7
cn = 1
(1..N).each do |n|
    cn = (cn*n) % MOD
end
cm = 1
(1..M).each do |n|
    cm = (cm*n) % MOD
end

if N==M
    puts 2*cn*cm%MOD
else
    puts cn*cm%MOD
end