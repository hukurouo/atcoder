# https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_c

a,b,c = gets.chomp.split.map(&:to_i)

if (c-b-a)>0 && (4*a*b) < (c-b-a)**2
    puts "Yes"
else
    puts "No"
end