# https://atcoder.jp/contests/abc238/tasks/abc238_a

n = gets.to_i

if n>100
    puts "Yes"
    exit
end

if 2**n > n**2
    puts "Yes"
else
    puts "No"
end