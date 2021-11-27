# https://atcoder.jp/contests/arc099/tasks/arc099_a

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

puts ((N-1)/(K-1).to_f).ceil