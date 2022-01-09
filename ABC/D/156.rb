# https://atcoder.jp/contests/abc156/tasks/abc156_d

n,a,b = gets.chomp.split.map(&:to_i)

MOD=10**9+7
ans = 2.pow(n,MOD) - 1

a1=1
((n-a+1)..n).each do |i|
    a1*=i
    a1 = a1%MOD
end
a2=1
(1..a).each do |i|
    a2*=i
    a2 = a2%MOD
end
a = (a1 * a2.pow(MOD-2, MOD)) % MOD

b1=1
((n-b+1)..n).each do |i|
    b1*=i
    b1 = b1%MOD
end
b2=1
(1..b).each do |i|
    b2*=i
    b2 = b2%MOD
end
b = (b1 * b2.pow(MOD-2, MOD)) % MOD

puts (ans-a-b)%MOD

# フェルマーの小定理
# https://img.atcoder.jp/abc156/editorial.pdf
# コンビネーション
# 繰り返し二乗法