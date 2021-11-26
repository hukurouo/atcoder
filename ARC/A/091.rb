# https://atcoder.jp/contests/arc091/tasks/arc091_a

N,M = gets.chomp.split.map(&:to_i)

if N!=1 && M!=1
    puts (N*M) - (N*2) - (M*2) + 4
else
    n,m = N,M
    n = N+2 if N==1
    m = M+2 if M==1
    puts (n*m) - (n*2) - (m*2) + 4
end