# https://atcoder.jp/contests/abc195/tasks/abc195_b

A,B,W = gets.chomp.split.map(&:to_i)

def ceil(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end

w = W*1000
mi = ceil(w,B)
ma = w/A

if ma >= mi
    puts [mi,ma].join(" ")
else
    puts "UNSATISFIABLE"
end