# https://atcoder.jp/contests/arc100/tasks/arc100_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

list=[]
arr.each_with_index do |a,i|
    b = a - i - 1
    list << b
end
list.sort!

med=0
if N%2==0
    m=N/2
    med = list[m-1..m].sum / 2
else
    m=N/2
    med = list[m]
end

ans=0
arr.each_with_index do |a,i|
    ans += (a-(med+(i+1))).abs
end
puts ans