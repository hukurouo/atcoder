# https://atcoder.jp/contests/abc048/tasks/abc048_b

a,b,x = gets.chomp.split.map(&:to_i)

puts b/x - (a-1)/x

# デカい数値
# 切り上げ
# 切り捨て