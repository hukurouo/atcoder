# https://atcoder.jp/contests/abc076/tasks/abc076_c

sd = gets.chomp
T = gets.chomp
ans = "UNRESTORABLE"

s_list = []
[*0..(sd.size - T.size)].each do |i|
    s = sd[i..i+T.size-1].gsub("?",".")
    if T.match(s)
        tmp_s = Marshal.load(Marshal.dump(sd))
        tmp_s[i..i+T.size-1] = T
        s_list << tmp_s.gsub("?","a")
    end
end

if s_list.size > 0
    ans = s_list[0]
    s_list.each do |s|
        ans = [ans, s].min
    end
end

puts ans

# 貪欲法
# 辞書順最小