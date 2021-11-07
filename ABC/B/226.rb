# https://atcoder.jp/contests/abc226/tasks/abc226_b

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }
 
puts arr.uniq.size