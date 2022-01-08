# https://atcoder.jp/contests/abc146/tasks/abc146_d

N = gets.to_i
arr = Array.new(N-1) { gets.split.map(&:to_i) }

g={}
arr.each do |a,b|
    g[a]||=[]
    g[a] << b
end
hash={}
queue = []
queue << [1,0]
until queue.empty?
    a, color = queue.shift
    next unless g[a]
    i=1
    g[a].each do |b|
        if color==i
            i+=1
        end
        next if hash[[a,b]]
        hash[[a,b]] = i
        queue << [b,i]
        i+=1
    end
end

ans=[]
arr.each do |a|
    ans << hash[a]
end
puts ans.max
puts ans