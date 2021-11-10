# https://atcoder.jp/contests/abc084/tasks/abc084_b

a,b = gets.chomp.split.map(&:to_i);
s = gets.chomp

ans = "Yes"
s.chars.each_with_index do |c, index|
    if index == a
        ans = "No" if c != "-"
    else
        ans = "No" if !c.match?(/^[0-9]$/)
    end
end
puts ans