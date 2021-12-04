# https://atcoder.jp/contests/abc078/tasks/arc085_a

N,M = gets.chomp.split.map(&:to_i)

puts ((N-M)*100 + M*1900)*(2**M)