# https://atcoder.jp/contests/abc158/tasks/abc158_c

a,b = gets.chomp.split.map(&:to_i);

ans = -1
(1..2000).reverse_each do |yen|
    if (yen*0.08).floor == a && (yen*0.1).floor == b
        ans = yen
    end
end
puts ans