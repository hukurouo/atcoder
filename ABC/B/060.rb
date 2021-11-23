# https://atcoder.jp/contests/abc060/tasks/abc060_b

a,b,c = gets.chomp.split.map(&:to_i)

# An % B = C
# A*n / B = X amari C

hash = {}
(1..10000).each do |i|
    amari = (i*a % b)
    if amari == c
        puts "YES"
        exit
    end
    if hash[amari]
        puts "NO"
        exit
    end
    hash[amari] = 1
end