# https://atcoder.jp/contests/abc194/tasks/abc194_d

N = gets.to_i

n = N.dup
ans=0
n-=1
while n > 0
    ans += (N/n.to_f)
    n-=1
end
puts ans

# 確率 pで成功する試行を、成功するまで行うときの
# 試行回数(最後の成功した回も含む) の期待値は 1/p である。