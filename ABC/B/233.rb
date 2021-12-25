# https://atcoder.jp/contests/abc233/tasks/abc233_b

l,r = gets.chomp.split.map(&:to_i)
s = gets.chomp
puts s[0...l-1] + s[l-1...r].reverse + s[r..-1]