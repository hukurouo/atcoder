# https://atcoder.jp/contests/abc204/tasks/abc204_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

if N==1
    puts arr.sum
    exit
end

n = arr.sum / 2
dp=Array.new(N+1){ Array.new(n+1, false) }
dp[0][0] = true
i=0
while i<N
    j=0
    while j<(n+1)
        if j>=arr[i]
            dp[i+1][j] = dp[i][j-arr[i]] | dp[i][j]
        else
            dp[i+1][j] = dp[i][j]
        end
        j+=1
    end
    i+=1
end

i=n
while i>0
    if dp[N][i]
        puts [arr.sum - i, i].max
        exit
    end
    i-=1
end

# 部分和DP