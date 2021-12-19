# https://atcoder.jp/contests/abc161/tasks/abc161_d

K = gets.to_i

queue = []
(1..9).each do |i|
    queue << i.to_s
end
list = []
until queue.empty?
    s = queue.shift
    i = s[-1].to_i
    list << s.to_i
    if s.size >= 10
        next
    end
    (-1..1).each do |j|
        next unless (i+j).between?(0,9)
        queue.push(s + (i+j).to_s)
    end
end

puts list.sort[K-1]