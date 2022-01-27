# https://atcoder.jp/contests/abc182/tasks/abc182_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

m1 = [] # 移動距離
m2 = [] # 最大で進める距離

t=0
m=0
i=0
while i<N
    n = arr[i]
    t += n
    m = [m, t].max
    m1 << t
    m2 << m
    i+=1
end

ans=0
x=0
i=0
while i<N
    ans = [ans, x+m2[i]].max
    x += m1[i]
    i+=1
end
puts ans