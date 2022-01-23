# https://atcoder.jp/contests/abc236/tasks/abc236_a

s = gets.chomp
a,b = gets.chomp.split.map(&:to_i)

t = s[b-1]
s[b-1] = s[a-1]
s[a-1] = t
puts s