# https://atcoder.jp/contests/hitachi2020/tasks/hitachi2020_b

A,B,M = gets.chomp.split.map(&:to_i);
arr_a = gets.chomp.split.map(&:to_i);
arr_b = gets.chomp.split.map(&:to_i);
arr_c = Array.new(M) { gets.split.map(&:to_i) }

ans = arr_a.min + arr_b.min
arr_c.each do |c|
    t = arr_a[c[0]-1] + arr_b[c[1]-1] - c[2]
    ans = [ans, t].min
end

puts ans