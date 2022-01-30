# https://atcoder.jp/contests/abc237/tasks/abc237_e

N,M = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
uv = Array.new(M) { gets.split.map(&:to_i) }
Heights = arr

start = arr[0]
dif = start - arr.min
mdif = arr.max - arr.min
if dif == 0
    puts 0
    exit
end

g = {}
uv.each do |a,b|
    g[a]||=[]
    g[a]<<b
    g[b]||=[]
    g[b]<<a
end

def score(x,y)
    hx = Heights[x-1]
    hy = Heights[y-1]
    score = 0
    if hx>hy
        score = hx-hy
    elsif hx<hy
        score = -2*(hy-hx)
    else
        score = 0
    end
    score
end

ans = 0
queue = [[1,0]]
memo = Hash.new
until queue.empty?
    u, enjoy = queue.shift
    next if enjoy + mdif < ans
    ans = [ans, enjoy].max
    g[u].each do |to|
        s = score(u,to)
        if !memo[to] || memo[to] < enjoy+s
            queue.push([to, enjoy+s])
            memo[to] = enjoy+s
        end
    end
end
puts ans