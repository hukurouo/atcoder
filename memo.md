# 整数の入力
a = gets.to_i
# スペース区切りの整数の入力
b,c=gets.chomp.split(" ").map(&:to_i);
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