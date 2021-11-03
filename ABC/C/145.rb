# https://atcoder.jp/contests/abc145/tasks/abc145_c

N = gets.to_i
xy = Array.new(N) { gets.split.map(&:to_i) } 

cnt = 0
dists = []
# N!通りを列挙
[*1..N].permutation(N).each do |perm|
    dist = 0
    cnt += 1
    N.times do |i|
        next if i==0
        d = Math.sqrt((xy[perm[i-1]-1][0]-xy[perm[i]-1][0])**2 + (xy[perm[i-1]-1][1]-xy[perm[i]-1][1])**2)
        dist += d
    end
    dists << dist
end

puts dists.sum / cnt.to_f

# 順列全探索