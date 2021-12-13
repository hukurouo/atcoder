# https://atcoder.jp/contests/arc080/tasks/arc080_b

H,W = gets.chomp.split.map(&:to_i)
N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

list = []
arr.each_with_index do |a,i|
    a.times do
        list << i+1
    end
end
list2 = []
l = []
list.each_with_index do |a,i|
    l << a
    if (i+1)%W==0
        list2 << l
        l = []
    end
end
ans = []
list2.each_with_index do |a,i|
    if i%2==0
        ans << a
    else
        ans << a.reverse
    end
end
ans.each do |a|
    puts a.join(" ")
end