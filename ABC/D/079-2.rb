# https://atcoder.jp/contests/abc079/tasks/abc079_d

H,W = gets.chomp.split.map(&:to_i)
costs = Array.new(10) { gets.split.map(&:to_i) }
arr = Array.new(H) { gets.split.map(&:to_i) }

dp = costs.dup
n = costs.size
n.times do |k|
    n.times do |i|
        n.times do |j|
            # k頂点ある場合の、iからjまでの最小経路
            dp[i][j] = [dp[i][j], dp[i][k]+dp[k][j]].min
        end
    end
end
ans=0
arr.each do |ar|
    ar.each do |a|
        if a.between?(0,9)
            ans+=dp[a][1]
        end
    end
end
puts ans

# warshall_floyd
# ワーシャルフロイド法