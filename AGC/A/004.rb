# https://atcoder.jp/contests/abc046/tasks/abc046_b

a,b,c = gets.chomp.split.map(&:to_i);

if [a%2,b%2,c%2].count(0) >= 1
    puts 0
else
    puts [a,b,c].min(2).inject(:*)
end