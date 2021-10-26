# https://atcoder.jp/contests/abc086/tasks/abc086_b
 
#入力
a,b = gets.chomp.split;
res = "No"
 
num = (a+b).to_i
 
if Math.sqrt(num).round == Math.sqrt(num)
    res = "Yes"
end
 
# 出力
print("#{res}\n")