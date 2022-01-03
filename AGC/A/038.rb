# https://atcoder.jp/contests/agc038/tasks/agc038_a

H,W,A,B = gets.chomp.split.map(&:to_i)

H.times do |j|
    t=""
    W.times do |i|
        if i < A && j < B
            t+="0"
        elsif i >= A && j < B
            t+="1"
        elsif i < A && j >= B
            t+="1"
        else
            t+="0"
        end
    end
    puts t
end