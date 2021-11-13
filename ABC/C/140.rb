# https://atcoder.jp/contests/abc140/tasks/abc140_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

al = [arr.first]
(N-2).times do |i|
    al << [arr[i],arr[i+1]].min
end
al << arr.last
puts al.sum