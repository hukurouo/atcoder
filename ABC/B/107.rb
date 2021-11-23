# https://atcoder.jp/contests/abc107/tasks/abc107_b

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

arr.delete("."*W)

arr2 = Array.new(W) { "" }

(arr.size).times do |i|
    (arr[0].size).times do |j|
        arr2[j] += arr[i][j]
    end
end
arr2.delete("."*(arr.size))

arr3 = Array.new(arr2[0].size) { "" }
(arr2.size).times do |i|
    (arr2[0].size).times do |j|
        arr3[j] += arr2[i][j]
    end
end

puts arr3