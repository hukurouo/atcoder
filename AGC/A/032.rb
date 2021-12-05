# https://atcoder.jp/contests/agc032/tasks/agc032_a

N = gets.to_i
b = gets.chomp.split.map(&:to_i)

arr = []
while b.size > 0
    flg = true
    b.each_with_index.reverse_each do |c,i|
        if b[i] == i+1
            arr << i+1
            b.delete_at i
            flg = false
            break
        end
    end
    if flg
        puts -1
        exit
    end
end
puts arr.reverse