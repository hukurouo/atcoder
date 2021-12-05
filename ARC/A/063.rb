# https://atcoder.jp/contests/abc047/tasks/arc063_a

s = gets.chomp

cnt = 0
(s.size-1).times do |i|
    if s[i] != s[i+1]
        cnt += 1
    end
end
puts cnt