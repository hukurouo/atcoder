# https://atcoder.jp/contests/abc188/tasks/abc188_e

N,M = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
xy = Array.new(M) { gets.split.map(&:to_i) }

g={}
starts=[]
xy.each do |x,y|
    starts << [x, arr[x-1]]
    g[x]||=[]
    g[x] << [y, arr[y-1]]
end

memo = Array.new(N+1)
ans=-Float::INFINITY
starts.sort_by{|x|x[1]}.each do |start, scost|
    next if !g[start] || memo[start]
    queue = [[start,scost]]
    until queue.empty?
        u, cost = queue.shift
        next if memo[u]
        memo[u] = true
        g[u].each do |to, tcost|
            ans = [ans, tcost-cost].max
            queue << [to, [tcost,cost].min] if g[to]
        end
    end
end
puts ans