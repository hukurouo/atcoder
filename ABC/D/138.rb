# https://atcoder.jp/contests/abc138/tasks/abc138_d
 
N,Q = gets.chomp.split.map(&:to_i)
ab = Array.new(N-1) { gets.split.map(&:to_i) }
px = Array.new(Q) { gets.split.map(&:to_i) }
 
costs = {}
px.each do |k,v|
    costs[k]||=0
    costs[k]+=v
end
hash={}
ab.each do |a|
    hash[a[0]]||=[]
    hash[a[1]]||=[]
    hash[a[0]]<<a[1]
    hash[a[1]]<<a[0]
end
scores = Array.new(N+1,nil)
queue = [1]
scores[1] = costs[1]
until queue.empty?
    i = queue.shift
    next if !hash[i]
    hash[i].each do |j|
        unless scores[j]
            costs[j]||=0
            scores[i]||=0
            scores[j] = scores[i] + costs[j]
            queue << j
        end
    end
end
scores.shift
puts scores.join(" ")

# 根付き木
#  i < j の時に 頂点i は 頂点j より根に近いとは限らない