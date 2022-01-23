# https://atcoder.jp/contests/abc236/tasks/abc236_c

N,M = gets.chomp.split.map(&:to_i)
arrs = gets.chomp.split
arrt = gets.chomp.split

hash={}
arrs.each do |s|
    hash[s] = false
end
arrt.each do |s|
    hash[s] = true
end
hash.each do |k,v|
    if v
        puts "Yes"
    else
        puts "No"
    end
end