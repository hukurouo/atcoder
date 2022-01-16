# https://atcoder.jp/contests/abc171/tasks/abc171_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)
Q = gets.to_i
bc = Array.new(Q) { gets.split.map(&:to_i) }

hash={}
arr.each do |a|
    hash[a]||=0
    hash[a]+=1
end

ans = arr.sum
bc.each do |b,c|
    if !hash[b]
        puts ans
        next
    end
    bt = hash[b]
    ans += (c-b)*(bt)
    hash[c]||=0
    hash[c] += bt
    hash[b] = 0
    puts ans
end