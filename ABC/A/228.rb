# https://atcoder.jp/contests/abc228/tasks/abc228_a

s,t,x = gets.chomp.split.map(&:to_i);

if s<t
    if s<=x && x<t
        puts "Yes"
        exit
    end
else
    if x<t || s<=x
        puts "Yes"
        exit
    end
end
puts "No"