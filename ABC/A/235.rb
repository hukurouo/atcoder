# https://atcoder.jp/contests/abc235/tasks/abc235_a

s = gets.chomp

n1=(s[0]+s[1]+s[2]).to_i
n2=(s[1]+s[2]+s[0]).to_i
n3=(s[2]+s[0]+s[1]).to_i

puts n1+n2+n3