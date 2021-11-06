# https://atcoder.jp/contests/arc006/tasks/arc006_3

N = gets.to_i
arr = Array.new(N) { gets.to_i }
danbools = [[arr.shift]]

arr.each do |a|
    is_load = false
    danbools.each do |d|
        if d.last >= a
            d.push << a
            is_load = true
            break
        end
    end
    unless is_load
        danbools << [a]
    end
end

p danbools.size

# 貪欲法
# より厳しいところをとっていく Greedy