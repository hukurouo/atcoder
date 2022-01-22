# https://atcoder.jp/contests/abc164/tasks/abc164_d
 
S = gets.chomp

tot=0
ans=0
hash={}
hash[0] = 1
di = 1
n = S.size
(n-1).downto(0).each do |i|
    tot = (tot + (S[i].to_i * di))%2019
    di = (di*10)%2019
    hash[tot]||=0
    ans += hash[tot]
    hash[tot]+=1
end
puts ans