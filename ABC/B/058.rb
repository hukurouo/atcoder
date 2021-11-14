# https://atcoder.jp/contests/abc058/tasks/abc058_b

o = gets.chomp
e = gets.chomp

password = ""

o.size.times do |i|
    password += o[i]
    password += e[i] if e[i]
end

puts password