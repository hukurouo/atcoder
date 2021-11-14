# https://atcoder.jp/contests/abc103/tasks/abc103_b

s = gets.chomp
t = gets.chomp

arr = s.chars
ans = "No"
s.size.times do |i|
    pop = arr.pop
    arr.unshift pop
    if arr.join == t
        ans = "Yes"
    end
end
puts ans
