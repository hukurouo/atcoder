# https://atcoder.jp/contests/abc164/tasks/abc164_d
 
N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

hash={}
arr.each do |a,b|
    hash[a]||=[]
    hash[a]<<b
    hash[b]||=[]
    hash[b]<<a
end

visited = Array.new(N)
queue = []
queue << 1

until queue.empty?
    i = queue.shift
    hash[i]||=[]
    hash[i].each do |j|
        unless visited[j-1]
            visited[j-1] = i
            queue << j
        end
    end
end
puts "Yes"
puts visited[1..-1]