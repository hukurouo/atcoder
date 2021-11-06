# https://atcoder.jp/contests/joi2008yo/tasks/joi2008yo_a

x = 1000 - gets.to_i

coins = [500,100,50,10,5,1]
cnt = 0

coins.each do |c|
    t = x/c
    x -= t*c
    cnt += t
end

puts cnt

# 貪欲法
# 硬貨