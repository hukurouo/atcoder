# https://atcoder.jp/contests/abc088/tasks/abc088_d

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

cnt = arr.map{|row|row.count(".")}.sum
DX = [1,0,-1,0]
DY = [0,1,0,-1]
visited = Array.new(H) { Array.new(W,nil) }
queue = []
queue << [0,0,1]
until queue.empty?
    y, x, cost = queue.shift
    next if visited[y][x]
    visited[y][x] = cost
    if y==H-1 && x==W-1
        puts cnt - cost
        exit
    end
    4.times do |i|
        ny = y + DY[i]
        nx = x + DX[i]
        next if ny < 0 || nx < 0 || H <= ny || W <= nx || arr[ny][nx]=="#"
        queue.push([ny, nx, cost+1])
    end
end
puts -1