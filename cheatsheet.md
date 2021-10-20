# 整数の入力
n = gets.to_i
# スペース区切りの整数の入力
b,c = gets.chomp.split(" ").map(&:to_i);
arr = gets.chomp.split(" ").map(&:to_i);
# 文字列の入力
s = gets.chomp
# 出力
print("#{a+b+c} #{s}\n")
# while文
while 条件式 do
  実行する処理1
  実行する処理2
end
# 各桁の和
num.to_s.split(//).map(&:to_i).sum
# 文字列の削除
s.slice!(i,n) : i番目からn文字削除
# 配列操作
a.shift : 配列の先頭の要素を取り除いてそれを返す
a.shift(n) : n個だけ取り除き、それを配列で返す
# 数値
.floor 切り捨て
.ceil  切り上げ
.round 四捨五入