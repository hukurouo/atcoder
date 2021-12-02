# https://atcoder.jp/contests/abc067/tasks/arc078_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

counts = [0]
arr.each do |a|
    counts << counts.last + a
end
sum = counts.last

ans = Float::INFINITY
(N-1).times do |i|
    x = counts[i+1]
    y = sum - x
    ans = [ans,(x-y).abs].min
end
puts ans