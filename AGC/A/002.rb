# https://atcoder.jp/contests/agc002/tasks/agc002_a

a,b = gets.chomp.split.map(&:to_i);

if a==0 || b==0
    puts "Zero"
elsif a>0 && b>0
    puts "Positive"
elsif a<0 && b>0
    puts "Zero"
else
    cnt = b-a+1
    if cnt%2==0
        puts "Positive"
    else
        puts "Negative"
    end
end