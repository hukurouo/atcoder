# https://atcoder.jp/contests/abc109/tasks/abc109_c

N,X = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

arr << X
arr.sort!
arr2 = []
N.times do |i|
    arr2 << arr[i+1] - arr[i]
end
puts arr2.inject(:gcd)