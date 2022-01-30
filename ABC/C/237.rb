# https://atcoder.jp/contests/abc237/tasks/abc237_c

s = gets.chomp.chars

top_a = 0
bot_a = 0
i=0
while i<s.size
    if s[i] == "a"
        top_a += 1
    else
        break
    end
    i+=1
end
i=0
n = s.size
while i<n
    if s[n-1-i] == "a"
        bot_a += 1
    else
        break
    end
    i+=1
end
if top_a > bot_a
    puts "No"
    exit
end

while s[-1] == "a"
    s.pop
end
while s[0] == "a"
    s.shift
end

while s.size > 0
    if s[0] == s[-1]
        s.shift
        s.pop
    else
        puts "No"
        exit
    end
end
puts "Yes"