# https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_b

# 入力
n = gets.to_i

x = n/1.08
res = ""

if n == (x.ceil*1.08).floor
    res = x.ceil
else
    res = ":("
end

# 出力
print("#{res}\n")

# category: 税