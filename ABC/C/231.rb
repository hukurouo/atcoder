# https://atcoder.jp/contests/abc231/tasks/abc231_c

N,Q = gets.chomp.split.map(&:to_i)
heights = gets.chomp.split.map(&:to_i).sort.reverse
arr = Array.new(Q) { gets.to_i }

sorted = arr.sort.reverse
hash={}
x = sorted.shift
cnt=0
i=0
while i < N && x
    h = heights[i]
    if x > h
        hash[x]=cnt
        x = sorted.shift
    else
        cnt+=1
        i+=1
    end
end

arr.each do |a|
    if hash[a]
        puts hash[a]
    else
        puts N
    end
end