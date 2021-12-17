# https://atcoder.jp/contests/arc066/tasks/arc066_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

MOD = 10**9+7
hash={}
if N%2==0
    (1..N/2).each do |i|
        hash[2*i-1]=0
    end
    arr.each do |a|
        if !hash[a]
            puts 0
            exit
        end
        hash[a]+=1
    end
    hash.each do |k,v|
        if v != 2
            puts 0
            exit
        end
    end
    ans=1
    hash.each do
        ans*=2
        ans = ans%MOD
    end
    puts ans%MOD
else
    (0..N/2).each do |i|
        hash[2*i]=0
    end
    arr.each do |a|
        if !hash[a]
            puts 0
            exit
        end
        hash[a]+=1
    end
    if hash[0] != 1
        puts 0
        exit
    end
    hash.each do |k,v|
        next if k==0
        if v != 2
            puts 0
            exit
        end
    end
    ans=1
    hash.each do |k,v|
        next if k==0
        ans*=2
        ans = ans%MOD
    end
    puts ans%MOD
end