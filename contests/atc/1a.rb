# https://atcoder.jp/contests/atc001/tasks/dfs_a

#入力
H,W = gets.chomp.split.map(&:to_i);
Maze =  Array.new(H) { gets.split(//) }

def dfs(y,x)
    return if (x < 0 || W <= x || y < 0 || H <= y)
    return if !Maze[y]
    return if Maze[y][x] == "#"
    if Maze[y][x] == "g"
        puts "Yes"
        exit
    end
    Maze[y][x] = "#"
    dfs(y+1,x)
    dfs(y,x+1) 
    dfs(y-1,x) 
    dfs(y,x-1) 
end

start = []
H.times do |i|
    W.times do |j|
        start = [j,i] if Maze[i][j] == "s"
    end
end

dfs(start[1], start[0])
res = "No"

# 出力
print("#{res}\n")

# 深さ優先探索
# 迷路