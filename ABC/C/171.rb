# https://atcoder.jp/contests/abc171/tasks/abc171_c
 
n = gets.to_i

a = n%26
n /= 26
list = [a]
while n>0
    if a==0
        n-=1
        if n==0
            break
        end
    end
    a = n%26
    list << a
    n /= 26
end
az = ("a".."z").to_a
ans=""

list.reverse.each do |i|
    ans += az[i-1]
end
puts ans