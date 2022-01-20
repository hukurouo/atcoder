# https://atcoder.jp/contests/abc166/tasks/abc166_d
 
X = gets.to_i

list = []
(-500..500).each do |n|
    list << n
end
hash={}
i=0
while i<1001
    a=list[i]
    j=0
    while j<1001
        b=list[j]
        x = a**5 - b**5
        hash[x] = [a,b]
        j+=1
    end
    i+=1
end
puts hash[X].join(" ")