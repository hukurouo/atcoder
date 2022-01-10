# https://atcoder.jp/contests/abc121/tasks/abc121_d

a,b = gets.chomp.split.map(&:to_i)

# 性質4「0≦aのとき、4a, 4a+1, 4a+2, 4a+3のxor和は0」
# https://blog.hamayanhamayan.com/entry/2017/05/20/145021

list = []
if a%4==0
elsif a%4==1
    list << [a,a+1,a+2]
elsif a%4==2
    list << [a,a+1]
else
    list << [a]
end
if b%4==0
    list << [b]
elsif b%4==1
    list << [b-1, b]
elsif b%4==2
    list << [b-2,b-1,b]
else
end

ans=0
list.flatten.each do |n|
    ans^=n
end
puts ans

# XOR