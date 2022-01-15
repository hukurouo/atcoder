# https://atcoder.jp/contests/abc213/tasks/abc213_d

N = gets.to_i
ab = Array.new(N-1) { gets.split.map(&:to_i) }

@hash={}
ab.each do |a,b|
    @hash[a]||=[]
    @hash[b]||=[]
    @hash[a] << b
    @hash[b] << a
end
(1..N).each do |n|
    @hash[n] = @hash[n].sort
end
@ans = []
@history = [1]
@memo = Array.new(N)
def dfs(n = 1)
    return unless n
    @memo[n-1] = true
    @ans << n
    while @hash[n].size > 0
        s = @hash[n].shift
        if s && !@memo[s-1]
            @history.push s
            dfs(s)
        end
    end
    n = @history.pop
    d = @history.last
    dfs(d)
end
dfs()
puts @ans.join(" ")