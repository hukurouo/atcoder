# https://atcoder.jp/contests/abc238/tasks/abc238_c

N = gets.to_i

MOD=998244353
ans=0
digit = N.to_s.size
i=1
while i<digit
    n = 9*((10)**(i-1))
    ans += n*(n+1)/2
    ans = ans % MOD
    i+=1
end

t = 10**(digit-1)-1
n = N-t
ans += n*(n+1)/2
puts ans % MOD