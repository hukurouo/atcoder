# https://atcoder.jp/contests/arc067/tasks/arc067_a

N = gets.to_i

require "prime"
hash={}
(1..N).each do |n|
    nums = Prime.prime_division(n).map {|p, e| [p] * e }.flatten
    nums.each do |i|
        hash[i]||=0
        hash[i]+=1
    end
end

MOD=10**9 + 7
ans=1
hash.each do |k,v|
    ans*=(v+1)
    ans = ans%MOD
end
puts ans%MOD

=begin
https://img.atcoder.jp/arc067/editorial.pdf
ある整数 x が、素因数分解によって x = p**n * q**m * ... (p, q, ...は素数) と表せる時、
x の約数の個数は (n + 1) × (m + 1) × ... となります。
=end

# 約数の個数