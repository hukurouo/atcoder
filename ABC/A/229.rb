# https://atcoder.jp/contests/abc229/tasks/abc229_a

s1 = gets.chomp
s2 = gets.chomp

if (s1 == ".#" && s2 == "#.") || (s1 == "#." && s2 == ".#")
    puts "No"
else
    puts "Yes"
end