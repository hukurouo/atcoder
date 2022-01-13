# https://atcoder.jp/contests/abc178/tasks/abc178_c

N = gets.to_i

MOD=10**9+7
ans = 10.pow(N,MOD) - (2*9.pow(N,MOD)) + 8.pow(N,MOD)
puts ans%MOD

# 包除原理