# https://atcoder.jp/contests/abc160/tasks/abc160_e

X,Y,A,B,C = gets.chomp.split.map(&:to_i)
arr1 = gets.chomp.split.map(&:to_i).sort.reverse[0...X]
arr2 = gets.chomp.split.map(&:to_i).sort.reverse[0...Y]
arr3 = gets.chomp.split.map(&:to_i).sort.reverse

while arr3.size > 0
    a = arr1[-1]
    b = arr2[-1]
    c = arr3[0]
    if a>c && b>c
        puts arr1.sum + arr2.sum
        exit
    end
    if a>b
        arr2.unshift c
        arr2.pop
        arr3.shift
    else
        arr1.unshift c
        arr1.pop
        arr3.shift
    end
end
puts arr1.sum + arr2.sum