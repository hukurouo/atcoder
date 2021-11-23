# https://atcoder.jp/contests/abc159/tasks/abc159_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hash = {}
arr.each do |a|
    hash[a]||=0
    hash[a]+=1
end

tot = 0
hash2 = {}
memo = {}
hash.each do |k,v|
    t = v*(v-1)/2
    tot += t
    hash2[k] = t
end

arr.each do |a|
    v = hash[a]-1
    t = v*(v-1)/2
    dif = hash2[a] - t
    puts tot-dif
end