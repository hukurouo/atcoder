# https://atcoder.jp/contests/abc220/tasks/abc220_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

def f(x,y)
    (x+y)%10
end

def g(x,y)
    (x*y)%10
end

hash={}
(0..9).each do |i|
    hash[i]=0
end

MOD = 998244353
hash[arr[0]] = 1
i=1
while i<N
    y = arr[i]
    t = []
    hash.each do |x,v|
        next if v==0
        t << [f(x,y),v]
        t << [g(x,y),v]
    end
    rhash = {}
    t.each do |n,v|
        if rhash[n]
            rhash[n] += v
        else
            rhash[n] = v
        end
    end
    hash = {}
    rhash.each do |k,v|
        hash[k] = v % MOD
    end
    i+=1
end
ans = Array.new(10,0)
hash.each do |k,v|
    ans[k] = v if v
end
puts ans