# https://atcoder.jp/contests/agc040/tasks/agc040_a

s = gets.chomp

# 左に連続する < の個数
t = 0
left = [0]
s.chars.each do |c|
    if c == "<"
        t += 1
        left << t
    else
        t = 0
        left << t
    end
end

# 右の連続する > の個数
t = 0
right = [0]
s.chars.reverse.each do |c|
    if c == ">"
        t += 1
        right << t
    else
        t = 0
        right << t
    end
end
right.reverse!

ans = 0
left.size.times do |i|
    ans += [left[i],right[i]].max
end
puts ans