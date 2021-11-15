# https://atcoder.jp/contests/abc042/tasks/abc042_b

N,L = gets.chomp.split.map(&:to_i);
arr = Array.new(N) { gets.chomp }

puts arr.sort.join