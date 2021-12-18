# https://atcoder.jp/contests/abc064/tasks/abc064_d

N = gets.to_i
S = gets.chomp

ans = []
l=0
r=0
S.chars.each do |c|
    if c=="("
        l+=1
    else
        r+=1
    end
    ans << c
    if r>l
        ans.unshift("(")
        l+=1
    end
end
(l-r).times do
    ans << ")"
end
puts ans.join("")