# https://atcoder.jp/contests/arc031/tasks/arc031_2

#入力
Maze =  Array.new(10) { gets.split(//) }
def dfs(y,x,maze)
    return if (x < 0 || 10 <= x || y < 0 || 10 <= y)
    return if !maze[y]
    return if maze[y][x] == "x"
    
    maze[y][x] = "x"
    dfs(y+1,x,maze)
    dfs(y,x+1,maze) 
    dfs(y-1,x,maze) 
    dfs(y,x-1,maze) 
end

umetate = []
10.times do |i|
    10.times do |j|
        umetate << [i, j] if Maze[i][j] == "x"
    end
end
cnt = 0
umetate.each do |ume|
    tmp_maze = Marshal.load(Marshal.dump(Maze))
    tmp_maze[ume[0]][ume[1]] = "o"
    10.times do |i|
        10.times do |j|
            if tmp_maze[i][j] == "o"
                dfs(i,j,tmp_maze)
                cnt += 1
            end
        end
    end
    if cnt == 1
        puts "YES"
        exit
    end
    cnt = 0
end

res = "NO"

# 出力
print("#{res}\n")

# 深さ優先探索
# 埋め立て