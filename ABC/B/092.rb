# https://atcoder.jp/contests/abc092/tasks/abc092_b

N = gets.to_i
D,X = gets.chomp.split.map(&:to_i);
arr = Array.new(N) { gets.to_i }
cnt = X

arr.each do |a|
    day = 1
    while day <= D do
        cnt += 1
        day += a
    end
end

puts cnt