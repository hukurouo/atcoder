# https://atcoder.jp/contests/abc216/tasks/abc216_d

N,M = gets.chomp.split.map(&:to_i)
arr = []
M.times do
    k = gets.to_i
    row = gets.chomp.split.map(&:to_i)
    arr << row
end

pos = {}
queue = []
arr.each_with_index do |a,i|
    c = a.pop
    pos[c]||=[]
    if pos[c].size > 0
        queue << c
    end
    pos[c] << i
end
until queue.empty?
    u = queue.shift
    l,r = pos[u]
    c1 = arr[l].pop
    c2 = arr[r].pop
    if c1.nil? && c2.nil?
        next
    end
    if c1
        pos[c1]||=[]
        pos[c1] << l
        if pos[c1].size == 2
            queue << c1
        end
    end
    if c2
        pos[c2]||=[]
        pos[c2] << r
        if pos[c2].size == 2
            queue << c2
        end
    end
end
if arr.flatten.compact.size == 0
    puts "Yes"
else
    puts "No"
end