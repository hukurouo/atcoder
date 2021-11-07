# https://atcoder.jp/contests/atc002/tasks/atc002_b

N,M,P = gets.chomp.split.map(&:to_i);

puts N.pow(P,M)

# n^p mod m
# 累乗の剰余