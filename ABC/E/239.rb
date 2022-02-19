# https://atcoder.jp/contests/abc239/tasks/abc239_e

N,Q = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
ab = Array.new(N-1) { gets.split.map(&:to_i) }
vk = Array.new(Q) { gets.split.map(&:to_i) }

g={}
ab.each do |a,b|
  g[a]||=[]
  g[b]||=[]
  g[a] << b
  g[b] << a
end

memo = Array.new(N+1)
dfs_memo = Hash.new
visit = Array.new(N+1)
queue = [[1,0]]
visit[1] = true
until queue.empty?
  u, dfs = queue.shift
  dfs_memo[dfs]||=[]
  dfs_memo[dfs] << u
  next if !g[u]
  g[u].each do |to|
    if !visit[to]
      queue << [to,dfs+1]
      visit[to] = true
    end
  end
end

dfs_memo = dfs_memo.sort_by { |k, _| k*-1 }.to_h
dfs_memo.each do |_,nums|
  nums.each do |u|
    kth = []
    kth << arr[u-1]
    g[u].each do |to|
      if memo[to]
        kth.push(*memo[to])
      end
    end
    kth.sort!.reverse!
    kth = kth[0..19]
    memo[u] = kth
  end
end

vk.each do |v,k|
  puts memo[v][k-1]
end