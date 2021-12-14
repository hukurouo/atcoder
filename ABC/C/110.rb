# https://atcoder.jp/contests/abc110/tasks/abc110_c

s = gets.chomp
t = gets.chomp

hash={}
list = []
s.size.times do |i|
    if hash[s[i]] && hash[s[i]] != t[i]
        puts "No"
        exit
    elsif hash[s[i]] == t[i]
        next
    end
    if list.include? t[i]
        puts "No"
        exit
    end
    hash[s[i]] = t[i]
    list << t[i]
end
puts "Yes"