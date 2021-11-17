# https://atcoder.jp/contests/abc144/tasks/abc144_c

N = gets.to_i

ans = Float::INFINITY
n=1
while n*n <= N
    if N%n==0
        t = n + (N/n) - 2
        ans = [ans,t].min
    end
    n+=1
end 
puts ans

# 約数問題はsqrt(N)で全探索を疑う