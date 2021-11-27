# https://atcoder.jp/contests/abc229/tasks/abc229_b

s1,s2 = gets.chomp.split
s1.reverse!
s2.reverse!

is_hard = false
(0..[s1.size-1,s2.size-1].min).each do |i|
    is_hard = true if (s1[i].to_i+s2[i].to_i)>=10
end

if is_hard
    puts "Hard"
else
    puts "Easy"
end