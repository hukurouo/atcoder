# https://atcoder.jp/contests/abc051/tasks/abc051_b

K,S = gets.chomp.split.map(&:to_i)

ans = 0
(0..K).each do |x|
    (0..K).each do |y|
        z = S-x-y
        ans += 1 if z.between?(0,K)
    end
end
puts ans