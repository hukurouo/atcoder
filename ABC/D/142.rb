# https://atcoder.jp/contests/abc142/tasks/abc142_d

a,b = gets.chomp.split.map(&:to_i)

require "prime"

diva = Prime.prime_division(a).map {|p, e| [p] * e }.flatten
divb = Prime.prime_division(b).map {|p, e| [p] * e }.flatten
common_divisor = diva.select{|n|divb.include? n}
puts common_divisor.uniq.size + 1