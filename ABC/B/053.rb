# https://atcoder.jp/contests/abc053/tasks/abc053_b

s = gets.chomp

lb=0
rb=0

s.size.times do |i|
    if s[i] == "A"
        lb = i
        break
    end
end

s.reverse!
s.size.times do |i|
    if s[i] == "Z"
        rb = s.size - i
        break
    end
end

puts rb-lb