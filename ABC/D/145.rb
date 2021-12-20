# https://atcoder.jp/contests/abc145/tasks/abc145_d

x,y = gets.chomp.split.map(&:to_i)

if (x+y)%3 != 0
    puts 0
    exit
end

MOD = 10**9+7
b = x+y
nx = b/3
ny = 2*b/3
i=0
while i<=b
    if nx == x && ny == y
        n = b/3
        a1 = 1
        ((n-i+1)..n).each do |j|
            a1*=j
            a1 = a1%MOD
        end
        a2 = 1
        (1..i).each do |j|
            a2*=j
            a2 = a2%MOD
        end
        puts (a1 * a2.pow(MOD-2, MOD)) % MOD
        exit
    end
    i+=1
    nx += 1
    ny -= 1
end
puts 0