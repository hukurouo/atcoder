# https://atcoder.jp/contests/arc080/tasks/arc080_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

if arr.uniq == [2]
    puts "Yes"
    exit
end

hash={0=>0, 2=>0, 4=>0}
arr.each do |i|
    if i%4==0
        hash[4] += 1
    elsif i%2==0
        hash[2] += 1
    else
        hash[0] += 1
    end
end

if hash[2] > 0
    hash[0] += 1
end

if hash[4]+1 >= hash[0]
    puts "Yes"
else
    puts "No"
end