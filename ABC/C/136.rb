# https://atcoder.jp/contests/abc136/tasks/abc136_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

mi = arr.last
arr.reverse.each do |a|
    mi = [a,mi].min
    if mi+1<a
        puts "No"
        exit
    end
end

puts "Yes"