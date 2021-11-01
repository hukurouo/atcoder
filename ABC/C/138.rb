# https://atcoder.jp/contests/abc138/tasks/abc138_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

arr.sort!
value = arr[0]
(N-1).times do |i|
    value = (value + arr[i+1])/2.0
end
puts value
