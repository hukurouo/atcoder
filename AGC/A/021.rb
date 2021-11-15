# https://atcoder.jp/contests/agc021/tasks/agc021_a

n = gets.chomp

is_comp = true
n.chars.each_with_index do |c,i|
    next if i==0
    is_comp = false if c!="9"
end

if is_comp
    puts n.chars.map{|x|x.to_i}.sum
    exit
end

if n.size == 1
    puts n.to_i
    exit
end

ans = []
ans << n[0].to_i - 1
((n.size.to_i)-1).times do |i|
    ans << 9
end
puts ans.sum