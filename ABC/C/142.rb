# https://atcoder.jp/contests/abc142/tasks/abc142_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

students = []
arr.each_with_index do |a,i|
    students << [a,i+1]
end


ans = students.sort.map{|s|s[1]}.join(" ")
puts ans