# https://atcoder.jp/contests/abc133/tasks/abc133_b

N,D = gets.chomp.split.map(&:to_i);
arr = Array.new(N) { gets.split.map(&:to_i) }

cnt = 0
[*1..N].combination(2).each do |c|
    dist = 0
    D.times do |i|
        dist += (arr[c[0]-1][i] - arr[c[1]-1][i])**2
    end
    d = Math.sqrt(dist)
    if d == d.round
        cnt += 1
    end
end
puts cnt