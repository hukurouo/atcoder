# https://atcoder.jp/contests/arc108/tasks/arc108_b

N = gets.to_i
s = gets.chomp

arr = s.chars
i=0
list = []
arr.each do |a|
    list << a
    if list[-3..-1] == ["f","o","x"]
        list.pop(3)
    end
end
puts list.size