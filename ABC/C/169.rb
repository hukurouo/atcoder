# https://atcoder.jp/contests/abc169/tasks/abc169_c
 
A,B = gets.chomp.split

require 'bigdecimal'
require 'bigdecimal/util'
ans = BigDecimal(A) * BigDecimal(B)
puts ans.to_i