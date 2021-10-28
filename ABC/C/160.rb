# https://atcoder.jp/contests/abc160/tasks/abc160_c

#入力
K,N = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split.map(&:to_i);

distance = []

(N-1).times do |i|
    distance << arr[i+1]-arr[i]
end

distance << (K-arr.last + arr.first)

ans = K - distance.sort.last

puts ans