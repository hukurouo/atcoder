# https://atcoder.jp/contests/abc225/tasks/abc225_a

# 入力
s = gets.chomp
 
if s[0] == s[1] && s[1] == s[2]
    puts 1
elsif s[0] == s[1] || s[1] == s[2] || s[2] == s[0]
    puts 3
else
    puts 6
end
exit
 
puts ans