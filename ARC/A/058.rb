# https://atcoder.jp/contests/abc042/tasks/arc058_a

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

queue = []
nums = []
(0..9).each do |i|
    unless arr.include? i
        queue << i.to_s 
        nums << i.to_s
    end
end
list = []
until queue.empty?
    s = queue.shift
    list << s.to_i
    if s.size == 5
        next
    end
    nums.each do |c|
        queue.push(s+c)
    end
end
puts list.select { |num| num >= N }.min