# https://atcoder.jp/contests/abc048/tasks/abc048_b
 
a,b,x = gets.chomp.split.map(&:to_i)

if a%x != 0
    a = x*((a/x)+1)
end
if b%x != 0
    b = x*((b/x))
end

puts (b-a)/x + 1

# デカい数値
# 切り上げ
# 切り捨て