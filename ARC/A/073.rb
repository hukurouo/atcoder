# https://atcoder.jp/contests/arc073/tasks/arc073_a

N,T = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

cnt = 0
(N-1).times do |i|
    cnt += [T,(arr[i+1]-arr[i])].min
end
puts cnt+T