# https://atcoder.jp/contests/abc230/tasks/abc230_c

N,A,B = gets.chomp.split.map(&:to_i)
P,Q,R,S = gets.chomp.split.map(&:to_i)

k1 = [[1-A,1-B].max, [N-A,N-B].min]
k2 = [[1-A,B-N].max, [N-A,B-1].min]

n = S-R+1
line = "."*n
(P..Q).each do |i|
    l = line.dup
    h = A-i
    points = [B-h, B+h].uniq.map{|x|x-=R}
    points.each do |po|
        if po>=0 && l[po]
            l[po] = "#"
        end
    end
    puts l
end