# https://atcoder.jp/contests/abc136/tasks/abc136_d

s = gets.chomp

nodes = []
t = ""
(0..s.size-2).each do |i|
    t += s[i]
    if s[i] == "L" && s[i+1] == "R"
        nodes << t
        t = ""
    end
end
nodes << t+s[-1]
ans = []
nodes.each do |node|
    c = node.size
    rc = node.count("R")
    lc = c - rc
    (rc-1).times do |i|
        ans << 0
    end
    if c%2==0
        ans << (c/2)
        ans << (c/2)
    else
        if rc%2==1
            ans << (c/2)+1
            ans << (c/2)
        else
            ans << (c/2)
            ans << (c/2)+1
        end
    end
    (lc-1).times do |i|
        ans << 0
    end
end
puts ans.join(" ")