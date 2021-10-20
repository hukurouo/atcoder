# https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_b

# 入力
h,w = gets.chomp.split(" ").map(&:to_i);

res = ((h*w)/2.0).ceil
res = 1 if [h,w].include? 1

# 出力
print("#{res}\n")
