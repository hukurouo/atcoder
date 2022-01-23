# https://atcoder.jp/contests/abc169/tasks/abc169_d
 
N = gets.to_i

require "prime"

list = Prime.prime_division(N).map {|p, e| [p] * e }.flatten
hash = list.tally
ans = 0
hash.each do |k,v|
    i=1
    cnt = v
    while cnt-i >= 0
        cnt -= i
        ans += 1
        i+=1
    end
end
puts ans