# https://atcoder.jp/contests/abc135/tasks/abc135_c

N = gets.to_i
a = gets.chomp.split.map(&:to_i);
b = gets.chomp.split.map(&:to_i);

cnt = 0
N.times do |i|
    if b[i] == a[i]
        cnt += a[i]
        next
    elsif b[i] > a[i]
        cnt += a[i]
        t = [b[i]-a[i],a[i+1]].min
        cnt += t
        a[i+1]-=t
    else
        cnt += b[i]
    end
end
puts cnt