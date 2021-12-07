# https://atcoder.jp/contests/abc144/tasks/abc144_d

a,b,x = gets.chomp.split.map(&:to_f)

s = x/a
# 底面が見えない場合
if s>a*b/2
    y = 2*s/a - b
    puts Math.atan((b-y)/a)*180/Math::PI
else
    y = 2*s/b
    puts Math.atan(b/y)*180/Math::PI
end