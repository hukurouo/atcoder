# https://atcoder.jp/contests/arc109/tasks/arc109_b

n = gets.to_i

l=0
r=10**20
while r-l > 1
    mid = (l+r)/2
    if (mid*(mid+1))/2 <= n+1
        l=mid
    else
        r=mid
    end
end
puts n+1-l