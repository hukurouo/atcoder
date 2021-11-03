# https://atcoder.jp/contests/abc225/tasks/abc225_c

# 入力
N,M = gets.chomp.split.map(&:to_i);
arr = Array.new(N) { gets.split.map(&:to_i) }
x = Array.new(N) { Array.new(M,0) }
y = Array.new(N) { Array.new(M,0) }

N.times do |i|
    M.times do |j|
        x[i][j] = (arr[i][j]+6)/7
        y[i][j] = (arr[i][j]-1)%7+1
    end
end

ans = "Yes"
N.times do |i|
    M.times do |j|
        ans = "No" if i>0 && x[i][j] != x[i-1][j]+1
        ans = "No" if j>0 && y[i][j] != y[i][j-1]+1
    end
end

puts ans

# 矩形領域の判定
# 行列

# よりシンプルな解答例
# https://atcoder.jp/contests/abc225/submissions/26901588
