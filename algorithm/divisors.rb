# 約数の列挙
require "prime"
def d(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

# 約数の個数
require "prime"
def number_divisors(n)
    n.prime_division.map {|p, e| e + 1 }.inject(:*)
end

# 素因数の列挙
require "prime"
primes = Hash.new
i=0
while i<N
    arr[i].prime_division.each do |pr, _|
        primes[pr] = true
    end
    i+=1
end