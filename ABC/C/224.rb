# https://atcoder.jp/contests/abc224/tasks/abc224_c

# 入力
n = gets.to_i
arr = Array.new(n) { gets.split(" ").map(&:to_i) }
cnt = 0

(0..n-1).each do |i|
    (i+1..n-1).each do |j|
        p1 = arr[i]
        p2 = arr[j]
        ((j+1)..n-1).each do |k|
            p3 = arr[k]
            cnt += 1 if (((p2[0]-p1[0])*(p3[1]-p1[1]))-((p3[0]-p1[0])*(p2[1]-p1[1]))) != 0
        end
    end
end

res = cnt

# 出力
print("#{res}\n")

# 三角形の成立条件