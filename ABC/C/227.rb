# https://atcoder.jp/contests/abc227/tasks/abc227_c

n = gets.to_i

cnt = 0
a = 1
while a*a*a <= n do
    b = a
    while a*b*b <= n
        cnt += (n/(a*b) - b + 1)
        b += 1
    end
    a += 1
end

puts cnt
        
# 計算時間ギリギリ
# ブロックは遅いのでwhileで書く
# n乗根で比較したいときは a < n**(1/3) でなくa*a*a < n