# https://atcoder.jp/contests/abc056/tasks/arc070_a

x = gets.to_i

cnt = 0
arr = []
(1..100000).each do |i|
    cnt += i
    arr << cnt
end

ans = 0
arr.each do |a|
    ans += 1
    if x <= a
        puts ans
        exit
    end
end