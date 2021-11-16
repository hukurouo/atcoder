# https://atcoder.jp/contests/agc012/tasks/agc012_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

ans = 0
cnt = 0
arr.sort.reverse.each_with_index do |a,i|
    next if i%2==0
    ans += a
    cnt += 1
    break if cnt == N
end

puts ans