# https://atcoder.jp/contests/abc152/tasks/abc152_d

N = gets.to_i

cnt = Array.new(10) { Array.new(10,0) }

(1..N).each do |i|
    top = i.to_s[0].to_i
    bot = i.to_s[-1].to_i
    cnt[top][bot] += 1
end

ans = 0
(1..9).each do |i|
    (1..9).each do |j|
        ans += cnt[i][j] * cnt[j][i]
    end
end
puts ans