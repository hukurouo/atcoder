# https://atcoder.jp/contests/abc173/tasks/abc173_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i).sort

ans=0
list=[]
i=0
while i<N
    a = list.shift
    ans+=a if a
    t = arr.pop
    if i==0
        list << t
    else
        list << t
        list << t
    end
    i+=1
end
puts ans