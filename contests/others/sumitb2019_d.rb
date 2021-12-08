# https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_d

N = gets.to_i
S = gets.chomp

cnt = 0

(0..999).each do |i|
    num_str = format("%03<n>d",n: i)
    d1,d2,d3 = num_str.split(//)
    a = S.index(d1,0)
    b = S.index(d2,a+1) if a
    c = S.index(d3,b+1) if b
    cnt += 1 if a && b && c
end

puts cnt

# 貪欲法(文字列)