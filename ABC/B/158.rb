# https://atcoder.jp/contests/abc108/tasks/abc108_b

N,A,B = gets.chomp.split.map(&:to_i);

main = N / (A+B)
amari = N % (A+B)

puts main*A + [amari, A].min