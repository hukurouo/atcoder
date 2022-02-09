# https://atcoder.jp/contests/abc182/tasks/abc182_e

H,W,N,M = gets.chomp.split.map(&:to_i)
ab = Array.new(N) { gets.split.map(&:to_i) }
cd = Array.new(M) { gets.split.map(&:to_i) }

blocks = Array.new(H+1) { Array.new(W+1) }
cd.each do |c,d|
    blocks[c][d] = true
end

dph = Array.new(H+1) { Array.new(W+1) }
ab.each do |a,b|
    next if dph[a][b]
    # to top
    t = a.dup
    while t>0 && !blocks[t][b]
        dph[t][b] = true
        t-=1
    end
    # to bottom
    t = a.dup
    while t<=H && !blocks[t][b]
        dph[t][b] = true
        t+=1
    end
end

dpw = Array.new(H+1) { Array.new(W+1) }
ab.each do |a,b|
    next if dpw[a][b]
    # to left
    t = b.dup
    while t>0 && !blocks[a][t]
        dpw[a][t] = true
        t-=1
    end
    # to right
    t = b.dup
    while t<=W && !blocks[a][t]
        dpw[a][t] = true
        t+=1
    end
end

ans=0
(1..H).each do |h|
    (1..W).each do |w|
        ans+=1 if dph[h][w] || dpw[h][w]
    end
end
puts ans