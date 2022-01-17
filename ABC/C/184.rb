# https://atcoder.jp/contests/abc184/tasks/abc184_c

a,b = gets.chomp.split.map(&:to_i)
c,d = gets.chomp.split.map(&:to_i)

if a==c && b==d
    puts 0
    exit
end

if a+b == c+d || a-b == c-d || ((a-c).abs + (b-d).abs) <= 3
    puts 1
else
    dx = c-a
    dy = d-b
    if (dx.abs - dy.abs).abs <= 3
        puts 2
    elsif ((a-c).abs + (b-d).abs) <= 6
        puts 2
    else
        if (dy+dx)%2==0
            puts 2
        else
            puts 3
        end
    end
end