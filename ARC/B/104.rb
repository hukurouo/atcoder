# https://atcoder.jp/contests/arc104/tasks/arc104_b

arr = gets.chomp.split
n = arr[0].to_i
s = arr[1]

# 累積和

a,b=0,0
hash = {}
hash[[a,b]] = 1
i=0
while i<n
    c = s[i]
    if c=="A"
        a+=1
    elsif c=="T"
        a-=1
    elsif c=="C"
        b+=1
    else
        b-=1
    end
    hash[[a,b]]||=0
    hash[[a,b]]+=1
    i+=1
end
ans=0
hash.each do |k,v|
    ans += (v * (v-1)) / 2
end
puts ans