# https://atcoder.jp/contests/abc005/tasks/abc005_4

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }
Q = gets.to_i
persons = Array.new(Q) { gets.to_i }

s = Array.new(N+1) { Array.new(N+1,0) }
N.times do |i|
    N.times do |j|
        s[i+1][j+1] = s[i][j+1] + s[i+1][j] - s[i][j] + arr[i][j]
    end
end

counts = {}
(0..N-1).each do |x1|
    (x1+1..N).each do |x2|
        (0..N-1).each do |y1|
            (y1+1..N).each do |y2|
                area = (x2-x1)*(y2-y1)
                sum = s[x2][y2] - s[x1][y2] - s[x2][y1] + s[x1][y1]
                counts[area]||=0
                counts[area] = [counts[area],sum].max
            end
        end
    end
end

persons.each do |n|
    nums = []
    counts.each do |k,v|
        if k <= n
            nums << v
        end
    end
    puts nums.max
end

# 二次元累積和
