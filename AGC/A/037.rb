# https://atcoder.jp/contests/agc037/tasks/agc037_a

s = gets.chomp

cnt = 0
prev = ""
word = ""
s.chars.each do |c|
    word += c
    if prev != word
        cnt += 1
        prev = word
        word = ""
    end
end

puts cnt