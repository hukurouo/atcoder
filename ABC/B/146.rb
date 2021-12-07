# https://atcoder.jp/contests/abc146/tasks/abc146_c

A,B,X = gets.chomp.split.map(&:to_i)

lb = 0
ub = 10**20
 
while ub - lb > 1
    mid = (lb + ub) / 2
    v = A*mid + B*((mid.to_s).size)
    if X >= v
        lb = mid
    else
        ub = mid
    end
end

if lb > 1000000000
    puts 1000000000
else
    puts lb
end

# 二分探索