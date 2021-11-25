# https://atcoder.jp/contests/arc086/tasks/arc086_a

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

hash = {}
arr.each do |a|
    hash[a]||=0
    hash[a]+=1
end
arr2 = hash.sort_by { |_, v| v }
cnt = hash.size
ans = 0
(cnt-K).times do |i|
    ans += arr2[i][1]
end
p ans