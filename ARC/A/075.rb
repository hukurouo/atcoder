# https://atcoder.jp/contests/arc073/tasks/arc073_a

a,b = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.to_i }

tot = arr.sum
list = [0]
if tot%10!=0
    list << tot
end
N.times do |i|
    t = tot - arr[i]
    if t%10!=0
        list << t
    end
end

puts list.max