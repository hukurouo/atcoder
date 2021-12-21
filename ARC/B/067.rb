# https://atcoder.jp/contests/arc067/tasks/arc067_b

N,A,B = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

ans = 0
(1...N).each do |i|
    r1 = (arr[i] - arr[i-1])*A
    r2 = B
    ans += [r1,r2].min
end
puts ans