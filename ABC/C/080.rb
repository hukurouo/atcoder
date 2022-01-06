# https://atcoder.jp/contests/abc080/tasks/abc080_c

N = gets.to_i
f = Array.new(N) { gets.split.map(&:to_i) }
profits = Array.new(N) { gets.split.map(&:to_i) }

ans=-Float::INFINITY
[0, 1].repeated_permutation(10).each do |bits|
    next if bits.count(1) == 0
    t=0
    N.times do |i|
        cnt=0
        10.times do |j|
            cnt+=1 if f[i][j] == 1 && bits[j] == 1
        end
        t += profits[i][cnt]
    end
    ans = [t,ans].max
end
puts ans