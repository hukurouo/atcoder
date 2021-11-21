# https://atcoder.jp/contests/abc091/tasks/abc091_b

N = gets.to_i
arr = Array.new(N) { gets.chomp }
M = gets.to_i
arr2 = Array.new(M) { gets.chomp }

words = arr + arr2
words.uniq!

ans = 0
words.each do |w|
    t = 0
    arr.each do |a|
        if w == a
            t += 1
        end
    end
    arr2.each do |a|
        if w== a
            t -=1
        end
    end
    ans = [ans,t].max
end
puts ans