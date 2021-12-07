# https://atcoder.jp/contests/abc061/tasks/abc061_c

N,K = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.split.map(&:to_i) }

hash = {}
arr.each do |ar|
    a = ar[0]
    b = ar[1]
    hash[a]||=0
    hash[a]+=b
end

hash = hash.sort.to_h
t = 0
hash.each do |k,v|
    t += v
    if t>=K
        puts k
        exit
    end
end