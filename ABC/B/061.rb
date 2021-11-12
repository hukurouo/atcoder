# https://atcoder.jp/contests/abc061/tasks/abc061_b

N,M = gets.chomp.split.map(&:to_i);
arr = Array.new(M) { gets.split.map(&:to_i) }

hash = {}
N.times do |i|
    hash[i+1] = 0
end

arr.each do |a|
    hash[a[0]] += 1
    hash[a[1]] += 1
end

hash.each do |k,v|
    puts v
end