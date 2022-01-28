# https://atcoder.jp/contests/abc190/tasks/abc190_c

N,M = gets.chomp.split.map(&:to_i)
ab = Array.new(M) { gets.split.map(&:to_i) }
K = gets.to_i
cd = Array.new(K) { gets.split.map(&:to_i) }

ans=0
[0, 1].repeated_permutation(K).each do |bits|
    t=0
    hash={}
    bits.each_with_index do |b,i|
        hash[cd[i][b]] = true
    end
    ab.each do |a,b|
        if hash[a] && hash[b]
            t+=1
        end
    end
    ans=[t,ans].max
end
puts ans