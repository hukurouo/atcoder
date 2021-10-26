# 整数の入力
N = gets.to_i
# スペース区切りの整数の入力
b,c = gets.chomp.split.map(&:to_i);
arr = gets.chomp.split.map(&:to_i);
xy = Array.new(N) { gets.split.map(&:to_i) }
arr = Array.new(N) { gets.to_i }
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
# 文字列
s.slice!(i,n) : i番目からn文字削除
s[len-n,len] : 文字列の末尾n文字
# 配列操作
Array.new(N) { Array.new(M,0) }
a.shift : 配列の先頭の要素を取り除いてそれを返す
a.shift(n) : n個だけ取り除き、それを配列で返す
a.pop   : 配列の末尾から要素を取り除いてそれを返す
# 数値
.floor 切り捨て
.ceil  切り上げ
.round 四捨五入
Float::INFINITY 無限
# deep_copy
obj_m = Marshal.load(Marshal.dump(obj))
# 計算
Math.sqrt(x) 平方数