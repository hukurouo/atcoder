# https://atcoder.jp/contests/abc071/tasks/arc081_b

N = gets.to_i
s = gets.chomp
s2 = gets.chomp

MOD=10**9+7
i=0
ans=0
t=0
if s[0] == s2[0]
    t=0 # 縦パターン
    ans+=3
    i+=1
else
    t=1 # 横パターン
    ans+=6
    i+=2
end

while i<N
    if s[i] == s2[i]
        if t==0
            ans*=2
        end
        t=0
        i+=1
    else
        if t==0
            ans*=2
        else
            ans*=3
        end
        t=1
        i+=2
    end
end

puts ans%MOD