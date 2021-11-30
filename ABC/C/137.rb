# https://atcoder.jp/contests/abc137/tasks/abc137_c

N = gets.to_i
arr = Array.new(N) { gets.chomp }

hash = {}
arr.each do |a|
    key = a.chars.sort.join
    hash[key]||=0
    hash[key]+=1
end
cnt = 0
hash.each do |k,v|
    cnt += v*(v-1)/2
end
puts cnt