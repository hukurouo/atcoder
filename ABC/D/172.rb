# https://atcoder.jp/contests/abc172/tasks/abc172_d

N = gets.to_i

ans=0
i=1
while i<=N
    n = N/i
    ans += (n*(n+1)*i)/2
    i+=1
end
puts ans