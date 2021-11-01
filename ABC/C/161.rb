# https://atcoder.jp/contests/abc161/tasks/abc161_c

# 入力
N,K = gets.chomp.split.map(&:to_i);

n = N
if N>=K
    n = N%K
end


if n > K/2
    puts K-n 
else
    puts n 
end
