# https://atcoder.jp/contests/diverta2019-2/tasks/diverta2019_2_b

N = gets.to_i
xy = Array.new(N) { gets.split.map(&:to_i) }

list = []
(0...N).each do |i|
    a1,b1 = xy[i][0], xy[i][1]
    (0...N).each do |j|
        next if i==j
        a2,b2 = xy[j][0], xy[j][1]
        list << [a1-a2, b1-b2]
    end
end

ans = Float::INFINITY
while list.size > 0
    pp,qq = list.shift
    t=0
    (0...N).each do |i|
        a1,b1 = xy[i][0], xy[i][1]
        (0...N).each do |j|
            next if i==j
            a2,b2 = xy[j][0], xy[j][1]
            if a1-a2 == pp && b1-b2 == qq
                t+=1
            end
        end
    end
    ans = [ans, N-t].min
end
if ans == Float::INFINITY
    puts 1
else
    puts ans
end