# https://atcoder.jp/contests/agc034/tasks/agc034_a

N,A,B,C,D = gets.chomp.split.map(&:to_i)
s = gets.chomp

(A...D).each do |i|
    if s[i..i+1] == "##"
        puts "No"
        exit
    end
end
if C>D
    (B-2..D-2).each do |i|
        if s[i..i+2] == "..."
            puts "Yes"
            exit
        end
    end
    puts "No"
else
    puts "Yes"
end