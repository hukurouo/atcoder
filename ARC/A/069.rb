# https://atcoder.jp/contests/arc069/tasks/arc069_a

N,M = gets.chomp.split.map(&:to_i)

# Scc
if N*2 > M
    puts M/2
else
    t = N*2 + M
    puts t/4
end