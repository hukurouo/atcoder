# https://atcoder.jp/contests/abc188/tasks/abc188_e

N,M = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
xy = Array.new(M) { gets.split.map(&:to_i) }

g={}
starts=[]
xy.each do |x,y|
    g[x]||=[]
    g[x] << y
end

INF = Float::INFINITY
dp = Array.new(N+1, INF)
(1..N).each do |n|
    next if !g[n]
    queue = [n]
    until queue.empty?
        u = queue.shift
        g[u].each do |to|
            a = arr[u-1]
            if dp[to] > [a,dp[u]].min
                dp[to] = [dp[u],a].min
                queue << to if g[to]
            end
        end
    end
end

ans = -INF
(1..N).each do |n|
    ans = [ans, arr[n-1]-dp[n]].max
end
puts ans