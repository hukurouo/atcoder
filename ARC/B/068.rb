# https://atcoder.jp/contests/arc068/tasks/arc068_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

list = arr.tally.sort_by { |_, v| v*-1 }.map{|a|a[1]}
l=0
r=list.size-1
while r-l > 0
    if list[r]==1
        r-=1
        next
    end
    if list[l]==1
        l+=1
        next
    end
    list[r]-=1
    list[l]-=1
end
ans = list.size
list.delete(1)
list.each do |num|
    if num%2==0
        ans-=1
    end
end
puts ans