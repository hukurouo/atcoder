# https://atcoder.jp/contests/keyence2020/tasks/keyence2020_b

N = gets.to_i
robots = Array.new(N) { gets.split.map(&:to_i) }
arms = []
robots.each do |r|
    arms << [r[0]+r[1],r[0]-r[1]]
end
arms.sort!

ans = 0
t = Float::INFINITY * -1
arms.each do |a|
    if t <= a[1]
        ans += 1
        t = a[0]
    end
end
puts ans
    
# 貪欲法
# 区間スケジューリング問題
# 終端ソート