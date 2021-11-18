# https://atcoder.jp/contests/abc100/tasks/abc100_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

cnt = 0
N.times do |i|
    num = arr[i]
    while num%2==0
        cnt += 1
        num/=2
    end
end
puts cnt
