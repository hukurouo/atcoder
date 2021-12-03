# https://atcoder.jp/contests/abc058/tasks/arc071_a

N = gets.to_i
arr = Array.new(N) { gets.chomp }

hash={}
("a".."z").each do |c|
    cnt = 50
    N.times do |i|
        cnt = [cnt,arr[i].count(c)].min
    end
    hash[c] = cnt
end
ans = ""
hash.each do |k,v|
    v.times do
        ans += k
    end
end
puts ans