# https://atcoder.jp/contests/abc084/tasks/abc084_d

require "prime"

Q = gets.to_i
N = 100000

counts = Array.new(N+1,0)
Prime.each(N) do |pri|
    counts[pri] = 1 if ((pri+1)/2).prime?
end

(1..N).each do |i|
    counts[i] += counts[i-1]
end

Q.times do |i|
    arr = gets.chomp.split.map(&:to_i);
    puts counts[arr[1]] - counts[arr[0]-1]
end

# 素数判定
# 累積和