# https://atcoder.jp/contests/abc047/tasks/abc047_b

W,H,N = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.split.map(&:to_i) }

x0,x1,y0,y1 = 0,W,0,H
N.times do |i|
    ar = arr[i]
    x,y,a = ar[0],ar[1],ar[2]
    if a==1
        x0 = x if x0 < x
    elsif a==2
        x1 = x if x1 > x
    elsif a==3
        y0 = y if y0 < y
    else
        y1 = y if y1 > y
    end
end

if (y1-y0) < 0 || (x1-x0) < 0
    puts 0
else
    puts (y1-y0)*(x1-x0)
end