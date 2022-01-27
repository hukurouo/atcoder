# https://atcoder.jp/contests/abc186/tasks/abc186_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i).sort

ans = 0
tot = arr.sum
i = arr.size - 1
while i > 0
    a = arr.pop
    tot -= a
    t = a*i - tot
    ans += t.abs
    i -= 1
end
puts ans