# https://atcoder.jp/contests/abc089/tasks/abc089_c

N = gets.to_i
arr = Array.new(N) { gets.chomp }

words = ["M","A","R","C","H"]
list = []
arr.each do |a|
    if words.include? a[0]
        list << a[0]
    end
end
hash = list.tally

ans = 0
words.combination(3).each do |c|
    w1,w2,w3 = c[0],c[1],c[2]
    hash[w1]||=0
    hash[w2]||=0
    hash[w3]||=0
    ans += hash[w1]*hash[w2]*hash[w3]
end
puts ans
