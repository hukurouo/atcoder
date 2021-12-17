# https://atcoder.jp/contests/abc085/tasks/abc085_d

N,H = gets.chomp.split.map(&:to_i)
ab = Array.new(N) { gets.split.map(&:to_i) }

mb = 0
ma = 0
ab.each do |a,b|
    if ma<a
        ma,mb=a,b
    end
end

list=[]
ab.each do |a,b|
    if ma < b
        list << b
    end
end
hp=H
cnt=0
list.sort.reverse.each do |l|
    cnt+=1
    hp-=l
    if hp<=0
        puts cnt
        exit
    end
end
def ceil(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end

puts cnt + ceil(hp,ma)