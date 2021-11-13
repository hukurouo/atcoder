# https://atcoder.jp/contests/abc059/tasks/abc059_b

a = gets.chomp
b = gets.chomp

if a.size > b.size
    puts "GREATER"
    exit
elsif a.size < b.size
    puts "LESS"
    exit
end

a.size.times do |i|
    if a[i] > b[i]
        puts "GREATER"
        exit
    elsif a[i] < b[i]
        puts "LESS"
        exit
    end
end

puts "EQUAL"