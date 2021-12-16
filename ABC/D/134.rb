# https://atcoder.jp/contests/abc134/tasks/abc134_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

box = Array.new(N+1,0)
i=N
while i>0
    t=0
    j=2
    while j <= N/i
        t+=box[j*i]
        j+=1
    end
    if arr[i-1] == 1
        if t%2==0
            box[i] = 1
        else
            box[i] = 0
        end
    else
        if t%2==0
            box[i] = 0
        else
            box[i] = 1
        end
    end
    i-=1
end
puts box.count(1)
list=[]
box.each_with_index do |b,i|
    list << i if b==1
end
if list.empty?
else
    puts list.join(" ")
end
