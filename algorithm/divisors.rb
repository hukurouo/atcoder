require "prime"
def d(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

require "prime"
def number_divisors(n)
    n.prime_division.map {|p, e| e + 1 }.inject(:*)
end