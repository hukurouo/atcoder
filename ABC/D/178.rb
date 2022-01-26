# https://atcoder.jp/contests/abc178/tasks/abc178_d

s = gets.to_i

c=[[]]
c[0][0] = 1
i=1
MOD=10**9+7
while i<2020
    c[i] = []
    c[i][0] = 1
    c[i][i] = 1
    j=1
    while j < i
        c[i][j] = c[i-1][j-1] + c[i-1][j]
        c[i][j] = c[i][j]%MOD
        j+=1
    end
    i+=1
end

i=1
ans=0
rem = s-3
while rem>0
    if i==1
        ans+=1
        rem-=3
        i+=1
        next
    end

    j = [rem,i-1].min
    ans += c[rem+i-1][j]

    ans = ans%MOD
    rem-=3
    i+=1
end
if rem==0
    ans+=1
end
puts ans