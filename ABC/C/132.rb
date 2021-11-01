# https://atcoder.jp/contests/abc132/tasks/abc132_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

med = arr.size / 2
medians = arr.sort[med-1..med]

puts medians[1] - medians[0]