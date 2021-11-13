# https://atcoder.jp/contests/abc093/tasks/abc093_b

a,b,k = gets.chomp.split.map(&:to_i);

# 全部出力
if (b-a) <= (k*2-1)
    (a..b).each do |n|
        puts n
    end
else
    (a..a+k-1).each do |n|
        puts n
    end
    (b-k+1..b).each do |n|
        puts n
    end
end