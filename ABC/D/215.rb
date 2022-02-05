# https://atcoder.jp/contests/abc215/tasks/abc215_d

N,M = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

require "prime"

primes = Hash.new
i=0
while i<N
    arr[i].prime_division.each do |pr, _|
        primes[pr] = true
    end
    i+=1
end
dp = Array.new(M+1)
dp[1] = true
primes.each do |d,_|
    i=1
    while d*i <= M
        dp[d*i] = true
        i+=1
    end
end
list = [1]
dp.each_with_index do |d,i|
    next if i==0
    if !d
        list << i
    end
end
puts list.size
list.sort.each do |d|
    puts d
end

# 素因数の列挙
# エラトステネスの篩