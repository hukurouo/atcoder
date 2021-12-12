# https://atcoder.jp/contests/abc160/tasks/abc160_d

N,X,Y = gets.chomp.split.map(&:to_i)

hash={}
(1..N).each do |i|
    (i+1..N).each do |j|
        d = [j-i, (Y-j).abs + (X-i).abs + 1].min
        hash[d]||=0
        hash[d]+=1
    end
end
(1..N-1).each do |k|
    if hash[k]
        puts hash[k]
    else
        puts 0
    end
end

# 無向グラフ
# 全探索