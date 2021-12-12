# https://atcoder.jp/contests/nikkei2019-2-qual/tasks/nikkei2019_2_qual_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

M = 998244353

if arr.count(0) != 1 || arr[0] != 0
    puts 0
    exit
elsif arr.max == 1
    puts 1
    exit
end

ans = 1
hash = arr.tally
(2..arr.max).each do |n|
    if !hash[n] || !hash[n-1]
        puts 0
        exit
    end
    num = hash[n-1]
    po = hash[n]
    ans *= num.pow(po,M)
    ans = ans%M
end
puts ans%M
    