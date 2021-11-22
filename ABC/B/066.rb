# https://atcoder.jp/contests/abc066/tasks/abc066_b

s = gets.chomp
while s.length > 0
    s = s[0..-3]
    med = s.length / 2
    if s[0..med-1] == s[med..-1]
        puts s.length
        exit
    end
end