# https://atcoder.jp/contests/arc127/tasks/arc127_a

n = gets.to_i

ans=0
# leading 1 count
(1..16).each do |i|
    l = "1"*i
    r = l.dup
    r[i-1] = "2"
    16.times do |j|
        lt = l+"0"*j
        rt = r+"0"*j
        if rt.to_i <= n
            ans += rt.to_i - lt.to_i
        elsif lt.to_i <= n && n < rt.to_i
            ans += (n+1) - lt.to_i
            break
        else n < lt.to_i
            break
        end
    end
end
puts ans