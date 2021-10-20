# https://atcoder.jp/contests/abc139/tasks/abc139_b

# 入力
a,b=gets.chomp.split(" ").map(&:to_f);

res = (((b-1)/(a-1))).ceil

# 出力
print("#{res}\n")