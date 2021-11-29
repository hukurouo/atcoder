# https://atcoder.jp/contests/agc015/tasks/agc015_b

s = gets.chomp

len = s.size
ans = 0
s.chars.each_with_index do |c,i|
    if c=="U"
        ans += (len-1-i)
        ans += (i)*2
    else
        ans += (len-1-i)*2
        ans += (i)
    end
end
puts ans