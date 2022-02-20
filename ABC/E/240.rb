# https://atcoder.jp/contests/abc240/tasks/abc240_e

N = gets.to_i
ab = Array.new(N-1) { gets.split.map(&:to_i) }

g={}
ab.each do |a,b|
  g[a]||=[]
  g[b]||=[]
  g[a] << b
  g[b] << a
end

dfs_memo = Hash.new
visit = Array.new(N+1)
visit[1] = true
queue = [[1,0]]
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

@memo = Array.new(N+1)
@t = 1
@g = g
def dfs(u = 1, pa = -1)
  flag = true
  @g[u].each do |to|
    if to != pa
      dfs(to, u) 
      flag = false
    end
  end
  if flag
    t = @t.dup
    range = [t,t]
    @memo[u] = range
    @t+=1
  end
end
dfs()

dfs_memo = dfs_memo.sort_by { |k, _| k*-1 }.to_h
dfs_memo.each do |k,nums|
  nums.each do |u|
    next if @memo[u]
    range = []
    g[u].each do |to|
      if @memo[to]
        range.push(*@memo[to])
      end
    end
    @memo[u] = [range.min, range.max]
  end
end

@memo.each_with_index do |m,i|
  next if i==0
  puts m.join(" ")
end