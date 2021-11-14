# https://atcoder.jp/contests/abc104/tasks/abc104_b

s = gets.chomp

ans = "AC"

if s[0] != "A"
    ans = "WA"
end

if s[2..-2].count("C") != 1
    ans = "WA"
end

s.chars.each do |c|
    next if c=="A" || c=="C"
    if !c.match?(/[a-z]/)
        ans = "WA"
    end
end

puts ans