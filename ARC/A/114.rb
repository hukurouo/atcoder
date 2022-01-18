# https://atcoder.jp/contests/arc114/tasks/arc114_a
 
N = gets.to_i
arr = gets.chomp.split.map(&:to_i)
 
require "prime"

primes = []
arr.each do |n|
    if n.prime?
        primes << n
    end
end
 
y=1
primes.each do |x|
    y*=x
end

ans = Float::INFINITY
nums=[2,3,5,7]
[0, 1].repeated_permutation(4).each do |bits|
    t = y.dup
    bits.each_with_index do |b,i|
        t *= nums[i] if b==1
    end
    flag = true
    arr.each do |x|
        flag = false if t.gcd(x) == 1
    end
    if flag
        ans = [ans,t].min
    end
end
puts ans