# https://atcoder.jp/contests/agc009/tasks/agc009_a

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }.reverse

cnt = 0
arr.each do |a|
    a[0]+=cnt
    next if a[0]%a[1]==0
    if a[0]<a[1]
        cnt += a[1]-a[0]
    else
        div = a[0]/a[1]
        cnt += (a[1]*(div+1))-a[0]
    end
end
puts cnt