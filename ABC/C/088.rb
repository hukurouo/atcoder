# https://atcoder.jp/contests/abc083/tasks/arc088_a

X,Y = gets.chomp.split.map(&:to_i);

cnt = 0
num = X

while num <= Y do
    cnt+=1
    num*=2
end

puts cnt

# 貪欲法
# より厳しいところをとっていく Greedy