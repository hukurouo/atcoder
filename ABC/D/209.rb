# https://atcoder.jp/contests/abc209/tasks/abc209_d

N,Q = gets.chomp.split.map(&:to_i)
ab = Array.new(N-1) { gets.split.map(&:to_i) }
cd = Array.new(Q) { gets.split.map(&:to_i) }

g = {}
ab.each do |a,b|
    g[a]||=[]
    g[a]<<b
    g[b]||=[]
    g[b]<<a
end

memo = Array.new(N+1)
queue = [[1,0]]
memo[1] = 0
until queue.empty?
    u, cost = queue.shift
    g[u].each do |to|
        if !memo[to]
            queue << [to, cost+1]
            memo[to] = cost+1
        end
    end
end

cd.each do |c,d|
    if (memo[c]+memo[d])%2 == 0
        puts "Town"
    else
        puts "Road"
    end
end