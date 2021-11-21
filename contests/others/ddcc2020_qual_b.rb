# https://atcoder.jp/contests/ddcc2020-qual/tasks/ddcc2020_qual_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

sum = arr.sum
t = 0
dif = Float::INFINITY
arr.each do |a|
    t += a
    t2 = sum - t
    d = (t-t2).abs
    dif = [d,dif].min
end
puts dif