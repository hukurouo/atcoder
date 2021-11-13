# https://atcoder.jp/contests/abc052/tasks/abc052_b

N = gets.to_i
s = gets.chomp

ans = 0
t = 0
s.chars.each do |c|
    if c == "I"
        t += 1
    else
        t -= 1
    end
    ans = [ans, t].max
end
puts ans