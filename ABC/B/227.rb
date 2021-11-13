# https://atcoder.jp/contests/abc227/tasks/abc227_b
 
N = gets.to_i
arr = gets.chomp.split.map(&:to_i);
 
ans = []
(1..200).each do |a|
    (1..200).each do |b|
        s = 4*a*b + 3*a + 3*b
        ans << s if s<=1000
    end
end
 
ans.uniq!
cnt = 0
arr.each do |a|
    cnt += 1 if !ans.include? a
end
puts cnt