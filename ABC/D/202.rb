# https://atcoder.jp/contests/abc202/tasks/abc202_d

a,b,k = gets.chomp.split.map(&:to_i)

c=[[]]
c[0][0] = 1
i=1
while i<60
    c[i] = []
    c[i][0] = 1
    c[i][i] = 1
    j=1
    while j < i
        c[i][j] = c[i-1][j-1] + c[i-1][j]
        c[i][j] = c[i][j]
        j+=1
    end
    i+=1
end

ans=""
while a>0 || b>0
    if a>0
        if k>c[a+b-1][a-1]
            ans+="b"
            k-=c[a+b-1][a-1]
            b-=1
        else
            ans+="a"
            a-=1
        end
    else
        ans+="b"
        b-=1
    end
end
puts ans