# https://atcoder.jp/contests/code-festival-2016-quala/tasks/codefestival_2016_qualA_c

s = gets.chomp
K = gets.to_i

hash={}
("a".."z").each_with_index do |c,i|
    hash[c] = 26-i
end
num = K
ans = []
s.chars.each do |c|
    if c == "a"
        ans << "a"
        next
    end
    if hash[c] <= num
        ans << "a"
        num -= hash[c]
    else
        ans << c
    end
end

if num > 0
    list = ("a".."z").to_a*2
    last = ans.pop
    li = 26 - hash[last]
    amari = num%26
    puts ans.join("") + list[li+amari]
else
    puts ans.join("")
end