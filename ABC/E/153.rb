# https://atcoder.jp/contests/abc153/tasks/abc153_e

H,N = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.split.map(&:to_i) }

# dp[i] = モンスターの体力を i 減らすため消耗する魔力の最小値
dp = Array.new(20001,10**8)
i=1
n=arr.size
while i <= H*2
    j=0
    while j < n
        a,b = arr[j][0], arr[j][1]
        cost = b
        if i-a >= 1
            cost += dp[i-a]
        end
        dp[i] = [dp[i], cost].min
        j+=1
    end
    i+=1
end
puts dp[H..H*2].min

# dp