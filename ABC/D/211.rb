# https://atcoder.jp/contests/abc211/tasks/abc211_d

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

g={}
arr.each do |a,b|
    g[a]||=[]
    g[b]||=[]
    g[a] << b
    g[b] << a
end

MOD = 10**9 + 7
memo = Array.new(N+1)
memo[1] = [1,0] # cnt, dps
queue = [[1,0]]
until queue.empty?
    u, dps = queue.shift
    g[u]||=[]
    g[u].each do |to|
        if !memo[to]
            queue.push([to, dps+1])
            memo[to] = [memo[u][0], dps+1]
            memo[to][0] = memo[to][0] % MOD
        else
            if dps+1 == memo[to][1]
                memo[to][0] += memo[u][0]
                memo[to][0] = memo[to][0] % MOD
            end
        end
    end
end
if memo[N]
    puts memo[N][0]
else
    puts 0
end