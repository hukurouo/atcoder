# https://atcoder.jp/contests/abc240/tasks/abc240_c

N,X = gets.chomp.split.map(&:to_i)
ab = Array.new(N) { gets.split.map(&:to_i) }

dp =Array.new(N+2) { Array.new(20) }
queue = [[1,0]]
until queue.empty?
  u, cost = queue.shift
  if u == N+1
    next
  end
  a, b = ab[u-1]
  if !dp[u+1][cost+a]
    dp[u+1][cost+a] = true
    queue << [u+1, cost+a]
  end
  if !dp[u+1][cost+b]
    dp[u+1][cost+b] = true
    queue << [u+1, cost+b]
  end
end

if dp[N+1][X]
  puts "Yes"
else
  puts "No"
end