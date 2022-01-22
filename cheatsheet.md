# 整数の入力
N = gets.to_i
# スペース区切りの整数の入力
a,b = gets.chomp.split.map(&:to_i)
N,M = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.split.map(&:to_i) }
arr = Array.new(N) { gets.to_i }
# 文字列の入力
s = gets.chomp
arr = Array.new(N) { gets.chomp }
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
s[len-n,len] : 文字列の末尾n文字 ※ s[0...0]
c.match?(/[a-z]/) : 小文字判定
s.chop : 末尾削除
# 配列操作
Array.new(N) { Array.new(M,0) }
[*1..5] => [1,2,3,4,5]
a.unshift : 先頭に
a.shift : 配列の先頭の要素を取り除いてそれを返す
a.shift(n) : n個だけ取り除き、それを配列で返す
a.pop   : 配列の末尾から要素を取り除いてそれを返す
[1,2,3,4,5].select { |num| num.even? }　filter
arr.inject(:*) 配列内の数値の積
Array.sort_by{|x|x[1]} 2番目でソート
# 数値
.floor 切り捨て # バグ生みやすいので気を付ける
.ceil  切り上げ # バグ生みやすいので気を付ける
.round 四捨五入
Float::INFINITY
数値判定：str.match?(/^[0-9]$/)
0埋め：num_str = format("%03<n>d",n: i) =>3桁
最大公約数 __gcd
numbers.inject(:gcd)
最小公倍数 __lcm
numbers.inject(:lcm)
MOD = 10**9 + 7
# deep_copy
obj_m = Marshal.load(Marshal.dump(obj))
# 計算
Math.sqrt(x) 平方数
require 'bigdecimal'
require 'bigdecimal/util'
BigDecimal(2).sqrt(100)
Prime.prime_division(2600).map {|p, e| [p] * e }.flatten 素因数分解
# hash
hash = hash.sort_by { |_, v| v }.to_h : valueでsort
["a", "b", "c", "b"].tally  #=> {"a"=>1, "b"=>2, "c"=>1}