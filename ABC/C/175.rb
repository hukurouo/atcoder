# https://atcoder.jp/contests/abc175/tasks/abc175_c

X,K,D = gets.chomp.split.map(&:to_i)

x = X.abs

def ceil(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end

t = ceil(x,D)

if t>=K
    puts (x-(K*D)).abs
else
    rem = K-t
    l = x - (t*D)
    r = l + D
    if rem%2==0
        puts l.abs
    else
        puts r.abs
    end
end