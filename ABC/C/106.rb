# https://atcoder.jp/contests/abc106/tasks/abc106_c

s = gets.chomp
k = gets.to_i

# 5000 兆 = 10**12 * 5000 = 5*10**15

list = []

s.chars.each do |c|
    if c == "1"
        list << c.to_i
    else
        list << c.to_i
        break
    end
end

if list[k-1]
    puts list[k-1]
else
    puts list.last
end