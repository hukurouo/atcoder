# https://atcoder.jp/contests/arc093/tasks/arc093_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

arr.unshift 0
arr.push 0
tot = 0
(N+1).times do |i|
    tot += (arr[i+1]-arr[i]).abs
end

N.times do |i|
    route = (arr[i+2]-arr[i+1]).abs + (arr[i+1]-arr[i]).abs
    short = (arr[i+2]-arr[i]).abs
    dif = (route-short).abs
    puts tot - dif
end