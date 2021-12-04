# https://atcoder.jp/contests/agc039/tasks/agc039_a

s = gets.chomp
K = gets.to_i

if s.chars.uniq.size == 1
    puts s.chars.size * K / 2
    exit
end

t = Marshal.load(Marshal.dump(s))
(t.size-1).times do |i|
    if t[i] == t[i+1]
        t[i+1] = "*"
    end
end
cnt = t.count("*")

if s[0] != s[-1]
    puts cnt*K
    exit
end

l = 0
r = 0
(t.size-1).times do |i|
    l+=1
    if s[i] != s[i+1]
        break
    end
end
(t.size-1).times do |i|
    r+=1
    if s[s.size-1-i] != s[s.size-2-i]
        break
    end   
end
puts cnt*K - (l/2 + r/2 - (l+r)/2)*(K-1)