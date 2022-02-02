# https://atcoder.jp/contests/abc211/tasks/abc211_c

s = gets.chomp

n = s.size
dp = Array.new(8) { Array.new(n+1,0) }
word = "chokudai"
dp.unshift(Array.new(n+1,1))
MOD = 10**9 + 7
i=1
while i<=8
    dp[i][0] = 0
    j=1
    while j<=n
        if s[j-1] == word[i-1]
            dp[i][j] = dp[i][j-1] + dp[i-1][j]
        else
            dp[i][j] = dp[i][j-1]
        end
        dp[i][j] = dp[i][j] % MOD
        j+=1
    end
    i+=1
end
puts dp.last.last