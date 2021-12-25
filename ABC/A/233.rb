# https://atcoder.jp/contests/abc233/tasks/abc233_a

x,y = gets.chomp.split.map(&:to_i)

cnt=0
while x<y
    cnt+=1
    x+=10
end
puts cnt