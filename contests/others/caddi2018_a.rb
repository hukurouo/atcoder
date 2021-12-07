# https://atcoder.jp/contests/caddi2018/tasks/caddi2018_a

N,P = gets.chomp.split.map(&:to_i)

require 'prime'
facts = Prime.prime_division(P).map {|p, e| [p] * e }.flatten
hash = facts.tally
ans = 1
hash.each do |k,v|
    if v>=N
        ans *= k**(v/N)
    end
end
puts ans

# 素因数分解