# https://atcoder.jp/contests/abc190/tasks/abc190_d

N = gets.to_i

require "prime"

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end
puts divisors(N).select{|n|n.odd?}.size*2