# https://atcoder.jp/contests/abc072/tasks/arc082_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

cnt = 0
flg = false
arr.each_with_index do |a,i|
    if flg
        flg = false
        next
    end
    if i+1 == a
        cnt += 1
        flg = true
    end
end
puts cnt