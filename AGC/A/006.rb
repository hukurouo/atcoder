# https://atcoder.jp/contests/agc006/tasks/agc006_a

N = gets.to_i
s = gets.chomp
t = gets.chomp

s_list = [s]
t.size.times do |i|
    s_list << s+t[i..t.size-1]
end

ans = 300
s_list.each do |l|
    if l[0..s.size-1] == s && l[(-1)*(t.size)..-1] == t
        ans = [l.size, ans].min
    end
end
puts ans