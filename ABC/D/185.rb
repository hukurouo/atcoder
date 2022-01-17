# https://atcoder.jp/contests/abc185/tasks/abc185_d

N,M = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i).sort

def ceil(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end

list = []
t=0
i=0
while i<M
    tt = arr[i]-t-1
    list << tt if tt>0
    t=arr[i]
    i+=1
end
list << N-t if N-t>0

k= list.min
cnt=0
list.each do |n|
    t = ceil(n,k)
    cnt += t
end
puts cnt