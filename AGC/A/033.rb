# https://atcoder.jp/contests/agc033/tasks/agc033_a

H,W = gets.chomp.split.map(&:to_i)
memo = Array.new(H) { gets.chomp.chars.map { |c| c == '#' ? 1 : 0 } }

queue = []
y=0
while y < H
    x=0
    while x < W
        if memo[y][x] == 1
            queue << [y,x]
        end
        x+=1
    end
    y+=1
end

DX = [1,0,-1,0]
DY = [0,1,0,-1]

until queue.empty?
    y, x = queue.shift
    dist = memo[y][x]
    4.times do |i|
        ny = y + DY[i]
        nx = x + DX[i]
        next if ny < 0 || nx < 0 || H <= ny || W <= nx
        next if memo[ny][nx] != 0
        memo[ny][nx] = dist+1
        queue.push([ny, nx])
    end
end
puts memo.flatten.max - 1

# queue 
# 時間制限