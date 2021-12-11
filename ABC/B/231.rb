# https://atcoder.jp/contests/abc231/tasks/abc231_b

N = gets.to_i
arr = Array.new(N) { gets.chomp }

hash = arr.tally

puts hash.sort_by { |_, v| v*-1 }[0][0]