# https://atcoder.jp/contests/agc035/tasks/agc035_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

=begin
両隣のラクダが被っている帽子に書かれた数のビットごとの排他的論理和が自身の被っている帽子に書か
れた数と等しいというのは、連続する 3 つの帽子に書かれた数のビットごとの排他的論理和が 0 というこ
とと同値です。このとき、この3つの数値は一意。
=end

if arr.uniq == [0]
    puts "Yes"
    exit
end

if arr.uniq.size == 2
    if arr.count(0) == N/3 && arr.count(arr.uniq.max) == 2*N/3
        puts "Yes"
        exit
    end
end

if arr.uniq.size == 3
    x = arr.uniq[0]
    y = arr.uniq[1]
    z = arr.uniq[2]
    if x^y^z == 0
        if arr.count(x) == N/3 && arr.count(y) == N/3 && arr.count(z) == N/3
            puts "Yes"
            exit
        end
    end
end
puts "No"

# XOR