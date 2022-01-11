# https://atcoder.jp/contests/abc163/tasks/abc163_d

N,K = gets.chomp.split.map(&:to_i)

mi = [0]
i=0
while i<=N
    mi << mi.last + i
    i+=1
end
ma = [0]
i=N
while i>=0
    ma << ma.last + i
    i-=1
end

MOD=10**9+7
ans=0
(K..(N+1)).each do |i|
    ans += ma[i]-mi[i]+1
    ans = ans%MOD
end
puts ans