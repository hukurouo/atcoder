# https://atcoder.jp/contests/abc074/tasks/abc074_b

#入力
N = gets.to_i
K = gets.to_i
arr = gets.chomp.split.map(&:to_i);

heikin = (0+K)/2.0
distance = 0

arr.each do |x|
    if x <= heikin
        distance += x*2
    else
        distance += (K-x)*2
    end
end
res = distance
