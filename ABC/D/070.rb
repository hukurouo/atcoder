# https://atcoder.jp/contests/abc070/tasks/abc070_d

N = gets.to_i
arr = Array.new(N-1) { gets.split.map(&:to_i) }
Q,K = gets.chomp.split.map(&:to_i)
xy = Array.new(Q) { gets.split.map(&:to_i) }

hash={}
arr.each do |a,b,c|
    hash[a]||=[]
    hash[b]||=[]
    hash[a] << [b,c]
    hash[b] << [a,c]
end

memo=Array.new(N+1)
queue = []
queue << [K,0]
until queue.empty?
    node, cost = queue.shift
    next if memo[node]
    memo[node] = cost
    hash[node].each do |d,c|
        queue << [d, cost+c]
    end
end

xy.each do |x,y|
    puts memo[x] + memo[y]
end