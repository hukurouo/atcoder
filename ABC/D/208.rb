# https://atcoder.jp/contests/abc208/tasks/abc208_d

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

INF = 10**12
dp = Array.new(N) { Array.new(N,INF) }
arr.each do |a,b,c|
    dp[a-1][b-1] = c
end
N.times do |i|
    dp[i][i] = 0
end
ans = 0
k=0 
while k<N # 経由する頂点
    i=0
    dpk = dp[k]
    while i<N # 始点
        j=0
        dpi = dp[i]
        dpik = dpi[k]
        while j<N # 終点
            t = dpik + dpk[j]
            dpi[j] = t if dpi[j] > t
            j+=1
        end
        ans += dpi.sum % INF
        i+=1
    end
    k+=1
end
puts ans

# ワーシャルフロイド法