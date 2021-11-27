# https://atcoder.jp/contests/abc229/tasks/abc229_c

N,W = gets.chomp.split.map(&:to_i)
arr = Array.new(N){ gets.split.map(&:to_i) }.sort.reverse

weight = 0
ans = 0
arr.each do |a|
    if weight + a[1] <= W
        ans += a[0]*a[1]
        weight += a[1]
    else
        ans += a[0]*(W-weight)
        break
    end
end
puts ans