# https://atcoder.jp/contests/abc098/tasks/abc098_b

N = gets.to_i
s = gets.chomp

ans = 0
(N-1).times do |i|
    a = s[0..i].chars.uniq
    b = s[i+1..-1].chars.uniq
    cnt = 0
    a.each do |aa|
        cnt += 1 if b.include? aa
    end
    ans = [cnt,ans].max
end
puts ans
