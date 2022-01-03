# https://atcoder.jp/contests/abc124/tasks/abc124_d

N,K = gets.chomp.split.map(&:to_i)
s = gets.chomp

arr = []
t=s[0]
i=1
while i<N
    if t[-1]==s[i]
        t+=s[i]
    else
        arr << t
        t=s[i]
    end
    i+=1
end
arr << t

n = arr.size
ans=0
cnt=0
r=0
l=0
t=0
while r<n
    t+=arr[r].size
    if arr[r][0] == "0"
        cnt += 1
    end
    while K < cnt
        t-=arr[l].size
        if arr[l][0] == "0"
            cnt-=1
        end
        l+=1
    end
    ans = [ans,t].max
    r+=1
end
puts ans

# 逆向きしゃくとり法