# https://atcoder.jp/contests/code-festival-2017-qualc/tasks/code_festival_2017_qualc_c

s = gets.chomp

t = s.chars
ans=0
while t.size > 1
    l,r = t[0],t[-1]
    if l==r
        t.shift
        t.pop
    elsif l=="x"
        t.push "x"
        ans+=1
    elsif r=="x"
        t.unshift "x"
        ans+=1
    else
        puts -1
        exit
    end
end
puts ans