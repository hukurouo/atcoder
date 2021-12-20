# https://atcoder.jp/contests/abc112/tasks/abc112_d

N,M = gets.chomp.split.map(&:to_i)

require "prime"

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

ans=0
divisors(M).each do |d|
    if d*N <= M
        ans = [ans,d].max
    end
end
puts ans