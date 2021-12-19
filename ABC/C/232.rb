# https://atcoder.jp/contests/abc232/tasks/abc232_c

N,M = gets.chomp.split.map(&:to_i)
ab = Array.new(M) { gets.split.map(&:to_i) }
cd = Array.new(M) { gets.split.map(&:to_i) }

hash={}
cd.each do |c,d|
    hash[c]||=[]
    hash[c] << d
    hash[d]||=[]
    hash[d] << c
end

[*1..N].permutation(N).each do |perm|
    is_all = true
    ab.each do |i,j|
        pi,pj = perm[i-1],perm[j-1]
        hash[pi]||=[]
        is_all = false unless hash[pi].include? pj
    end
    if is_all
        puts "Yes"
        exit
    end
end
puts "No"