# https://atcoder.jp/contests/abc057/tasks/abc057_b

N,M = gets.chomp.split.map(&:to_i)
ab = Array.new(N) { gets.split.map(&:to_i) }
cd = Array.new(M) { gets.split.map(&:to_i) }

ab.each do |player|
    ans_v = Float::INFINITY
    ans_i = 0
    cd.each_with_index do |point, i|
        dx = (player[0]-point[0]).abs
        dy = (player[1]-point[1]).abs
        d = dx+dy
        if d < ans_v
            ans_v = d
            ans_i = i
        end
    end
    puts ans_i+1
end