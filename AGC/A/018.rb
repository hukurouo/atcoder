# https://atcoder.jp/contests/agc018/tasks/agc018_a

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i).sort

gcd = arr.inject(:gcd)
if K%gcd==0 && K<=arr.max
    puts "POSSIBLE"
else
    puts "IMPOSSIBLE"
end
