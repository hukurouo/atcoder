# https://atcoder.jp/contests/abc107/tasks/arc101_a

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

ans = Float::INFINITY
(0..N-K).each do |i|
    left, right = arr[i], arr[i+K-1]
    if left < 0 && right > 0
        left, right = arr[i].abs, arr[i+K-1].abs
        if left < right
            left*=2
        else
            right*=2
        end
        ans = [ans, left+right].min
    elsif left >= 0
        ans = [ans, right].min
    elsif right <= 0
        ans = [ans, left*-1].min
    end
end
puts ans