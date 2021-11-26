# https://atcoder.jp/contests/abc154/tasks/abc154_d

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

# 期待値
hash = {}
cnt = 0
(1..1000).each do |i|
    cnt += i
    per = 1/(i.to_f)
    hash[i] = per*cnt
end

arr2 = []
arr.each do |a|
    arr2 << hash[a]
end

counts = Array.new(N+1,0)
t = 0
N.times do |i|
    counts[i+1] = counts[i] + arr2[i]
end

ans = 0
(N-K+1).times do |i|
    t = counts[i+K] - counts[i]
    ans = [t,ans].max
end
puts ans