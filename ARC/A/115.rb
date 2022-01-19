# https://atcoder.jp/contests/arc115/tasks/arc115_a
 
N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.chomp }

list=[]
hash={odd: 0, even: 0}
arr.each do |a|
    cnt = a.count("1")
    list << cnt
    if cnt%2==0
        hash[:even]+=1
    else
        hash[:odd]+=1
    end
end

ans=0
list.each do |a|
    if a%2==0
        hash[:even]-=1
        ans+=hash[:odd]
    else
        hash[:odd]-=1
        ans+=hash[:even]
    end
end
puts ans