# https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_c

X = gets.chomp

x1 = X[0..X.size-3].to_i
x2 = X[X.size-2..-1].to_i
coins = [5,4,3,2,1]

coin_num = 0
coins.each do |c|
    t = x2/c
    x2 -= t*c
    coin_num += t
end

if x1 >= coin_num && X.to_i>=100
    puts 1
else
    puts 0
end

# 全探索（条件を絞る）
# 貪欲法（コイン）