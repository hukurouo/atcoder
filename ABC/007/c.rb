# https://atcoder.jp/contests/abc007/tasks/abc007_3

# 入力
R,C = gets.chomp.split(" ").map(&:to_i);   # 行数r 列数c
Sy,Sx = gets.chomp.split(" ").map(&:to_i).map{|x|x-=1};
Gy,Gx = gets.chomp.split(" ").map(&:to_i).map{|x|x-=1};
Maze = []
R.times do |i|
    arr = gets.chomp.split(//);
    Maze << arr
end
D = Array.new(R) { Array.new(C,0) }
Dx = [1,0,-1,0]
Dy = [0,1,0,-1]
INF = 100

def bfs()
    queue = []
    R.times do |i|
        C.times do |j|
            D[i][j] = INF
        end
    end
    queue << {y: Sy, x: Sx}
    D[Sy][Sx] = 0
    while queue.size > 0 do
        player = queue.shift
        break if player[:y] == Gy  && player[:x] == Gx
        4.times do |i|
            nx = player[:x] + Dx[i]
            ny = player[:y] + Dy[i]
            if nx.between?(0,C-1) && ny.between?(0,R-1) && Maze[ny][nx] != "#" && D[ny][nx] == INF
                queue << {y: ny, x: nx}
                D[ny][nx] = D[player[:y]][player[:x]] + 1
            end
        end
    end
    D[Gy][Gx]
end   

res = bfs()
# 出力
print("#{res}\n")

# 幅優先探索