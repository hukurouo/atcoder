# https://atcoder.jp/contests/abc079/tasks/abc079_d

H,W = gets.chomp.split.map(&:to_i)
costs = Array.new(10) { gets.split.map(&:to_i) }
arr = Array.new(H) { gets.split.map(&:to_i) }

hash={}
(0..9).each do |num|
    m = costs[num][1]
    queue = []
    queue << [num,0]
    until queue.empty?
        n, total_cost = queue.shift
        next if m < total_cost

        to1cost = total_cost + costs[n][1]
        m = to1cost if m > to1cost

        10.times do |i|
            next if i==n
            queue.push([i, total_cost + costs[n][i]])
        end
    end
    hash[num]=m
end
ans=0
arr.each do |ar|
    ar.each do |a|
        if a.between?(0,9)
            ans+=hash[a]
        end
    end
end
puts ans