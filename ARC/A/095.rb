# https://atcoder.jp/contests/abc094/tasks/arc095_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

sorted = arr.sort
med = (N/2)-1
m1 = sorted[med]
m2 = sorted[med+1]
arr.each do |a|
    if a > m1
        puts m1
    else
        puts m2
    end
end