# https://atcoder.jp/contests/arc037/tasks/arc037_b

#入力
N,M=gets.chomp.split(" ").map(&:to_i)
edges={}
M.times do
    u,v=gets.chomp.split(" ").map(&:to_i)
    edges[u]||=[]
    edges[u].push(v)
    edges[v]||=[]
    edges[v].push(u)
end

visit=Array.new(N,nil)
cnt=0
(1..N).each do |n|
    next if visit[n]
    is_tree=true
    visit[n]=0
    targets = [n]
    while !targets.empty? do
        nexts=[]
        targets.each do |t|
            edges[t]||=[]
            edges[t].each do |v|
                next if visit[v]==0 || visit[t]==v
                if visit[v]
                    is_tree=false
                else
                    nexts.push(v)
                    visit[v]=t
                end
            end
        end
        targets=nexts
    end
    cnt+=1 if is_tree
end

puts cnt

# 無向グラフ
# bfs
# 木