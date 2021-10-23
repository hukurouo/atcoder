# https://atcoder.jp/contests/abc224/tasks/abc224_b

# 入力
h,w = gets.chomp.split(" ").map(&:to_i);
arr = Array.new(h) { gets.split(" ").map(&:to_i) }
res = "Yes"

(0..h-1).each do |i1|
    (i1+1..h-1).each do |i2|
        (0..w-1).each do |j1|
            (j1+1..w-1).each do |j2|
                res = "No" if arr[i1][j1] + arr[i2][j2] > arr[i2][j1] + arr[i1][j2]
            end
        end
    end
end

# 出力
print("#{res}\n")