# https://atcoder.jp/contests/abc181/tasks/abc181_e

N,M = gets.chomp.split.map(&:to_i)
hh = gets.chomp.split.map(&:to_i).sort
ww = gets.chomp.split.map(&:to_i)

cnt1 = [0]
cnt2 = [0]
dif1 = []
dif2 = []
i=0
while i+1<N
    dif1 << hh[i+1] - hh[i]
    i+=2
end
i=N-1
while i>0
    dif2 << hh[i] - hh[i-1]
    i-=2
end
dif1.each do |d|
    cnt1 << cnt1.last + d
end
dif2.each do |d|
    cnt2 << cnt2.last + d
end

n = hh.size
ans = Float::INFINITY
ww.each do |w|
    bi = hh.bsearch_index {|x| x > w}||n
    ri = (n - bi)/2
    li = n/2 - ri
    bi -= 1 if bi%2==1
    dif = (w - hh[bi]).abs
    t = dif + cnt1[li] + cnt2[ri]
    ans = [ans,t].min
end
puts ans