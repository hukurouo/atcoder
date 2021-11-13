# https://atcoder.jp/contests/abc071/tasks/abc071_b

s = gets.chomp

[*"a".."z"].each do |c|
    if !s.index(c,0)
        puts c
        exit
    end
end

puts "None"