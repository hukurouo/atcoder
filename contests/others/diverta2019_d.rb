# https://atcoder.jp/contests/diverta2019/tasks/diverta2019_d

N = gets.to_i

require "prime"

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

ans=0
divisors(N).reverse.each do |d|
    if d*d <= N
        break
    end
    if N/(d-1) == N % (d-1)
        ans += d-1
    end
end
puts ans