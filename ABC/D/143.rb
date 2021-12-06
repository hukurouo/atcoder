# https://atcoder.jp/contests/abc143/tasks/abc143_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i).sort

counts = [0]
(1..2020).each do |i|
    counts << counts.last + arr.count(i)
end

ans = 0
arr.each_with_index do |a,i|
    arr.each_with_index do |b,j|
        next if i==j
        l = (a-b).abs
        r = a+b
        cnt = counts[r-1]-counts[l]
        cnt -= 1 if a.between?(l+1,r-1)
        cnt -= 1 if b.between?(l+1,r-1)
        next if cnt < 0
        ans += cnt
    end
end
puts ans/6