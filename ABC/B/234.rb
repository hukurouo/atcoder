# https://atcoder.jp/contests/abc234/tasks/abc234_b

N = gets.to_i
xy = Array.new(N) { gets.split.map(&:to_i) }

arr=[]
(0...N).each do |i|
    ((i+1)...N).each do |j|
        x1,y1 = xy[i][0], xy[i][1]
        x2,y2 = xy[j][0], xy[j][1]
        d = (y2-y1)**2 + (x2-x1)**2
        arr << d**(0.5)
    end
end
puts arr.max