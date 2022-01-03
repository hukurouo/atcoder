# https://atcoder.jp/contests/arc097/tasks/arc097_a

s = gets.chomp
n = gets.to_i

list=[]
s.size.times do |i|
    5.times do |j|
        next unless s[i+j]
        list << s[i..i+j]
    end
end

puts list.uniq.sort[n-1]