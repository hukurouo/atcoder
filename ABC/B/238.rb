# https://atcoder.jp/contests/abc238/tasks/abc238_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

t=0
list = [0]
arr.each do |a|
    t+=a
    t = t%360
    list << t
end
list = list.sort
#p list
a = 360 - list[-1] + list[0]
ans = [a]
i=1
while i<N
    ans << list[i] - list[i-1]
    i+=1
end
puts ans.max