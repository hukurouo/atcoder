# https://atcoder.jp/contests/arc118/tasks/arc118_a

t,N = gets.chomp.split.map(&:to_i)

def f(x,t)
    (x*(100+t))/100
end

def ceil(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end

list = []
(1..100).each do |x|
    list << f(x,t)
end

dif = (1..100+t).to_a.difference(list)
n = N % dif.size
T = ceil(N,dif.size)

puts dif[n-1] + (T-1)*(100+t)