# https://atcoder.jp/contests/abc087/tasks/arc090_a

N = gets.to_i
a1 = gets.chomp.split.map(&:to_i);
a2 = gets.chomp.split.map(&:to_i);

ans = 0
N.times do |i|
    t = a1[0..i].sum + a2[i..N-1].sum
    ans = [ans,t].max
end
puts ans