# https://atcoder.jp/contests/abc174/tasks/abc174_d

N = gets.to_i
s = gets.chomp

ans=0
cnt = s.count("R")
i=0
while cnt > 0
    if s[i] == "W"
        ans+=1
        cnt-=1
    else
        cnt-=1
    end
    i+=1
end
puts ans