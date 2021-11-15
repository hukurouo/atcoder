# https://atcoder.jp/contests/abc097/tasks/abc097_b

X = gets.to_i

list = [1]
(2..35).each do |n|
    num = n*n
    while num <= 1000 do
        list << num
        num*=n
    end
end

puts list.select{|x|x<=X}.max