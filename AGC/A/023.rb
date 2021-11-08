# https://atcoder.jp/contests/agc023/tasks/agc023_a

#入力
N = gets.to_i
arr = gets.chomp.split.map(&:to_i);
counts = [0]
map = {}
map[0] = 1
t = 0
N.times do |i|
    t += arr[i]
    map[t]||= 0
    map[t] += 1
    counts << t
end

ans = 0
uniq_nums = counts.uniq
uniq_nums.each do |n|
    cnt = map[n]
    ans += (cnt * (cnt-1))/2
end

p ans

# 累積和