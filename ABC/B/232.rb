# https://atcoder.jp/contests/abc232/tasks/abc232_b

S = gets.chomp
T = gets.chomp

list = ("a".."z").to_a
list2 = list*2

indicies = []
hash={}
list.each_with_index do |c,i|
    hash[c] = i
end
S.chars.each do |c|
    indicies << hash[c]
end
(0..25).each do |i|
    t = []
    indicies.each do |j|
        t << list2[j+i]
    end
    if T==t.join("")
        puts "Yes"
        exit
    end
end
puts "No"