# https://atcoder.jp/contests/abc179/tasks/abc179_e

N,X,M = gets.chomp.split.map(&:to_i)

def f(a,m)
    (a*a) % m
end

ans=0
t=X
i=0
cnt=0
icnt=0
hash={}
hash[t]=1
while i<N
    ans+=t
    t = f(t,M)
    hash[t]||=0
    hash[t]+=1
    if hash[t] == 2
        cnt+=t
        icnt+=1
    elsif hash[t] == 3
        remain = N-i-1
        nloop = remain/icnt
        ans += (nloop * cnt)
        i+= (nloop*icnt)
    end
    i+=1
end
puts ans