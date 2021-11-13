# https://atcoder.jp/contests/abc152/tasks/abc152_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);
cnt = 0
min = arr.first
arr.each do |a|
    if a <= min
        cnt += 1
        min = a
    end
end
puts cnt
