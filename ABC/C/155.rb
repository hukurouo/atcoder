# https://atcoder.jp/contests/abc155/tasks/abc155_c

N = gets.to_i
arr = Array.new(N) { gets.chomp }

hash = {}
num = 0
arr.each do |a|
    hash[a]||=0
    hash[a] += 1
    num = [num,hash[a]].max
end

ans = []
hash.each do |k,v|
    if v == num
        ans << k
    end
end

puts ans.sort