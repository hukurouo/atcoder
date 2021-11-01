# https://atcoder.jp/contests/abc094/tasks/abc094_b

N,M,X = gets.chomp.split.map(&:to_i);
arr = gets.chomp.split.map(&:to_i);

checks = Array.new(N,0)

arr.each do |a|
    checks[a-1] = 1
end

r1=checks[0..X-2].sum
r2=checks[X..-1].sum

puts [r1,r2].min
