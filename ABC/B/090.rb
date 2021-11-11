# https://atcoder.jp/contests/abc090/tasks/abc090_b

a,b = gets.chomp.split.map(&:to_i);

cnt = 0
[*a..b].each do |n|
    s = n.to_s
    if s[0] == s[4] && s[1] == s[3]
        cnt += 1
    end
end
puts cnt
