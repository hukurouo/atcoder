# https://atcoder.jp/contests/abc151/tasks/abc151_d

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

starts = []
(0...H).each do |y|
    (0...W).each do |x|
        if arr[y][x]=="."
            starts << [y,x]
        end
    end
end

DX = [1,0,-1,0]
DY = [0,1,0,-1]
ans=0
starts.each do |s|
    visited = Array.new(H) { Array.new(W,nil) }
    queue = []
    queue << [s[0], s[1], 0]
    until queue.empty?
        y, x, cost = queue.shift

        next if visited[y][x]
        visited[y][x] = cost

        4.times do |i|
            ny = y + DY[i]
            nx = x + DX[i]
            next if ny < 0 || nx < 0 || H <= ny || W <= nx || arr[ny][nx]=="#"
            queue.push([ny, nx, cost+1])
        end
    end
    t = visited.map{|a|a.compact.max}.compact.max
    ans = [t,ans].max
end
puts ans