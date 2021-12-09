# https://atcoder.jp/contests/agc043/tasks/agc043_a

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.split(//) }

visited = Array.new(H) { Array.new(W,false) }
DY = [1, 0]
DX = [0, 1]

queue = []
if arr[0][0] == '#'
    queue << [0, 0, 1, '#']
else
    queue << [0, 0, 0, '.']
end

until queue.empty?
    y, x, cost, mark = queue.shift

    next if visited[y][x]
    visited[y][x] = true

    if y==H-1 && x==W-1
        puts cost
        break
    end

    2.times do |i|
        ny = y + DY[i]
        nx = x + DX[i]
        next if ny < 0 || nx < 0 || H <= ny || W <= nx
        if arr[ny][nx] == mark
            queue.unshift([ny, nx, cost, arr[ny][nx]])
        else
            if arr[ny][nx] == '.'
                queue.unshift([ny, nx, cost, arr[ny][nx]])
            else
                queue.push([ny, nx, cost+1, arr[ny][nx]])
            end
        end
    end
end

# queue
# 幅優先探索