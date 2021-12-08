# https://atcoder.jp/contests/joi2011yo/tasks/joi2011yo_e

# 入力
H,W,N = gets.chomp.split.map(&:to_i);
maze = []
sy,sx = 0,0
check_point = Array.new(N)
H.times do |i|
    row = gets.chomp.split(//);
    row.each_with_index do |r,j|
        check_point[r.to_i - 1] = [i,j] if r.match?(/^[0-9]$/)
        sy,sx=i,j if r == "S"
    end
    maze << row
end

dif = [[-1, 0], [1, 0], [0, 1], [0, -1]]
ans = 0

check_point.each do |gy, gx|
    vi = Array.new(H) { Array.new(W,nil) }
    vi[sy][sx] = 0
    queue = []
    queue << {y: sy, x: sx}
    while queue.size > 0 do
        player = queue.shift
        break if player[:y] == gy && player[:x] == gx
        dif.each do |dy, dx|
            ny = player[:y] + dy
            nx = player[:x] + dx
            next unless (nx.between?(0,W-1)) && (ny.between?(0,H-1))
            next if maze[ny][nx] == "X"
            next if vi[ny][nx] != nil
            vi[ny][nx] = vi[player[:y]][player[:x]] + 1
            queue << {y: ny, x: nx}
        end
    end
    ans += vi[gy][gx]
    sy,sx = gy,gx
end

puts ans

# BFS
# 迷路