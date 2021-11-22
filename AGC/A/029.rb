# https://atcoder.jp/contests/agc029/tasks/agc029_a

s = gets.chomp

white_cnt = 0
cnt = 0
s.chars.each_with_index do |c,i|
    if c=="W"
        cnt += (i-white_cnt)
        white_cnt += 1
    end
end
puts cnt