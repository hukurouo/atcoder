# https://atcoder.jp/contests/agc002/tasks/agc002_b

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

hash = {}
hash[1] = {red: true, cnt: 1}
(2..N).each do |i|
    hash[i] = {red: false, cnt: 1}
end

arr.each do |a|
    x = a[0]
    y = a[1]
    next if hash[x][:cnt] <= 0
    if hash[x][:red]
        hash[y][:red] = true
        hash[y][:cnt] += 1
        hash[x][:cnt] -= 1
        hash[x][:red] = false if hash[x][:cnt] == 0
    else
        hash[y][:cnt] += 1
        hash[x][:cnt] -= 1
        hash[x][:red] = false if hash[x][:cnt] == 0
    end
end

ans = 0
hash.each do |k,v|
    ans += 1 if v[:red]
end
puts ans