# https://atcoder.jp/contests/agc014/tasks/agc014_a

#入力
a,b,c = gets.chomp.split.map(&:to_i)
cnt = 0
if (a==b && b==c && a==c)
    if (a%2==0)
        p -1
        exit
    end
end
while (a%2==0 && b%2==0 && c%2==0) do
    cnt += 1
    aa = a/2.0
    bb = b/2.0
    cc = c/2.0

    a = bb+cc
    b = aa+cc
    c = aa+bb
end
ans = cnt
puts ans
