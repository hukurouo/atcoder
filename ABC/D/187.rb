# https://atcoder.jp/contests/abc187/tasks/abc187_d

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }

tot = arr.map{|a|a[0]}.sum
sorted = arr.sort_by{|x|2*x[0]+x[1]}.reverse

ans = 0
vote = 0
while vote <= tot
    a,b = sorted.shift
    tot -= a
    vote += (a+b)
    ans += 1
end
puts ans