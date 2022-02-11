# https://atcoder.jp/contests/abc198/tasks/abc198_e

N = gets.to_i
C = gets.chomp.split.map(&:to_i)
ab = Array.new(N-1) { gets.split.map(&:to_i) }

@g={}
ab.each do |a,b|
    @g[a]||=[]
    @g[a] << b
    @g[b]||=[]
    @g[b] << a
end

@ans = []
@memo = Array.new(1 + 10**5,0)
def dfs(u = 1, pa = -1)
    if @memo[C[u-1]]==0
        @ans << u 
    end
    @memo[C[u-1]]+=1
    @g[u].each do |to|
        dfs(to, u) if to != pa
    end
    @memo[C[u-1]]-=1
end
dfs()
puts @ans.sort

# 木構造のdfs