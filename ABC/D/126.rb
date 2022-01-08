# https://atcoder.jp/contests/abc126/tasks/abc126_d

N = gets.to_i
arr = Array.new(N-1) { gets.split.map(&:to_i) }

hash={}
arr.each do |u,v,w|
    hash[u]||=[]
    hash[v]||=[]
    hash[u] << [v,w]
    hash[v] << [u,w]
end
memo = Array.new(N)
queue = []
queue << [1,true]
until queue.empty?
    n, color = queue.shift
    next if !memo[n-1].nil?
    memo[n-1] = color
    hash[n].each do |d,w|
        if w%2==0
            queue << [d, color]
        else
            queue << [d, !color]
        end
    end
end
memo.each do |m|
    if m
        puts 0
    else
        puts 1
    end
end