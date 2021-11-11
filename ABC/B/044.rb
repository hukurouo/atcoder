# https://atcoder.jp/contests/abc044/tasks/abc044_b

w = gets.chomp
hash = {}

w.chars.each do |c|
    hash[c]||=0
    hash[c] += 1
end

ans = "Yes"
hash.each do |key,value|
    ans = "No" if value%2 == 1
end
puts ans
