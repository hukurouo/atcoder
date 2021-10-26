# https://atcoder.jp/contests/abc157/tasks/abc157_b

#入力
Bingo =  Array.new(3) { gets.split.map(&:to_i) }
N = gets.to_i
arr = Array.new(N) { gets.to_i }

3.times do |x|
    3.times do |y|
        Bingo[x][y] = "o" if arr.include? Bingo[x][y] 
    end
end

b = Bingo
res = "No"

# 横
res = "Yes" if b[0][0]=="o" && b[0][1]=="o" && b[0][2]=="o"
res = "Yes" if b[1][0]=="o" && b[1][1]=="o" && b[1][2]=="o"
res = "Yes" if b[2][0]=="o" && b[2][1]=="o" && b[2][2]=="o"
# 縦
res = "Yes" if b[0][0]=="o" && b[1][0]=="o" && b[2][0]=="o"
res = "Yes" if b[0][1]=="o" && b[1][1]=="o" && b[2][1]=="o"
res = "Yes" if b[0][2]=="o" && b[1][2]=="o" && b[2][2]=="o"
# 斜め
res = "Yes" if b[0][0]=="o" && b[1][1]=="o" && b[2][2]=="o"
res = "Yes" if b[0][2]=="o" && b[1][1]=="o" && b[2][0]=="o"

# 出力
print("#{res}\n")