# https://atcoder.jp/contests/abc170/tasks/abc170_d

N = gets.to_i
tarr = gets.chomp.split.map(&:to_i).sort

hash = tarr.tally
arr = []
tarr.each do |a|
    arr << a if hash[a] <= 1
end
memo = Array.new(1+10**6)
dp=Array.new(1+10**6)
i=0
n = tarr.size
while i<n
    d = tarr[i]
    if memo[d]
        i+=1
        next
    end
    memo[d] = true
    if dp[d]
        i+=1
        next 
    end
    j=2
    while d*j<(1+10**6)
        dp[d*j] = true
        j+=1
    end
    i+=1
end
ans=0
i=0
n = arr.size
while i<n
    ans+=1 if !dp[arr[i]]
    i+=1
end
puts ans