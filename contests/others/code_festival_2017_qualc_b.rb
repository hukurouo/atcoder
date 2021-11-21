# https://atcoder.jp/contests/code-festival-2017-qualc/tasks/code_festival_2017_qualc_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

a = arr.first
list = [a-1, a, a+1]
arr.each_with_index do |a,i|
    next if i==0
    list.size.times do |j|
        list[j] = [list[j]*(a-1), list[j]*(a), list[j]*(a+1)]
    end
    list.flatten!
end
puts list.select{|num|num.even?}.count