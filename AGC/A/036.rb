# https://atcoder.jp/contests/agc036/tasks/agc036_a

S = gets.to_i

# 三角形の面積
# 1/2 * |(x2-x1)*(y3-y1) - (x3-x1)*(y2-y1)|

x1=0
y1=0

# としたら、
# x2*y3 - x3*y2 = S

s = (S**(0.5)).ceil
x2=s
y3=s

x3y2 = s*s - S
x3=1
y2 = x3y2

puts [x1,y1,x2,y2,x3,y3].join(" ")