# https://atcoder.jp/contests/abc165/tasks/abc165_d

a,b,n = gets.chomp.split.map(&:to_i)

x = [n,b-1].min
puts (a*x)/b - a*(x/b)