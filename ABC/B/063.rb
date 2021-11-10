# https://atcoder.jp/contests/abc063/tasks/abc063_b

s = gets.chomp
length = s.size
ans = "yes"
ans = "no" if length != s.split(//).uniq.size
puts ans