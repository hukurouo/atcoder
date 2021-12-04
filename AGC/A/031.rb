# https://atcoder.jp/contests/agc031/tasks/agc031_a

N = gets.to_i
s = gets.chomp

MOD = 10**9 + 7
hash = s.chars.tally
ans = 1
hash.each do |k,v|
    ans *= (v+1) 
    ans = ans % MOD
end
puts ans%MOD - 1