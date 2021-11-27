# https://atcoder.jp/contests/code-festival-2017-qualb/tasks/code_festival_2017_qualb_b

N = gets.to_i
a = gets.chomp.split.map(&:to_i)
M = gets.to_i
a2 = gets.chomp.split.map(&:to_i)

hash = {}
a.each do |a|
    hash[a]||=0
    hash[a]+=1
end
hash2 = {}
a2.each do |a|
    hash2[a]||=0
    hash2[a]+=1
end

hash2.each do |k,v|
    if hash[k].nil?
        puts "NO"
        exit
    end
    if v > hash[k]
        puts "NO"
        exit
    end
end
puts "YES"