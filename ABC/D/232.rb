# https://atcoder.jp/contests/abc232/tasks/abc232_d

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

DX = [1,0]
DY = [0,1]
ans=0
queue = []
queue << [0, 0, 1]
visited = Array.new(H) { Array.new(W,nil) }
until queue.empty?
    y, x, cost = queue.shift
    next if visited[y][x]
    visited[y][x] = cost
    ans = [ans,cost].max
    2.times do |i|
        ny = y + DY[i]
        nx = x + DX[i]
        next if ny < 0 || nx < 0 || H <= ny || W <= nx || arr[ny][nx]=="#"
        queue.push([ny, nx, cost+1])
    end
end
puts ans

# 経路問題のqueueは絶対visitを入れておく