# https://atcoder.jp/contests/arc091/tasks/arc091_b

N,K = gets.chomp.split.map(&:to_i)

if K==0
    puts N*N
    exit
end

ans=0
((K+1)..N).each do |b|
    n = (N+1)/b
    d = 0
    d += (b-K)*n
    l = K + b*n
    r = N
    if l <= r
        d += (r-l+1)
    end
    ans += d
end
puts ans