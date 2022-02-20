# https://atcoder.jp/contests/abc240/tasks/abc240_a

a,b = gets.chomp.split.map(&:to_i)

if b-a == 1
  puts "Yes"
elsif a==1 && b==10
  puts "Yes"
else
  puts "No"
end