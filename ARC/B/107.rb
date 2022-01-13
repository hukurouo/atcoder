# https://atcoder.jp/contests/arc107/tasks/arc107_b

N,K = gets.chomp.split.map(&:to_i)

memo=Array.new((2*N)+1)

(2..(N*2)).each do |i|
    if i-1 <= N
        memo[i] = i-1
    else
        memo[i] = 2*N - (i-1)
    end
end

if K==0
    # a+b = c+d
    puts memo.compact.map{|x|x*=x}.sum
elsif K < 0
    l=2
    r=(2+(-1*K))
    ans=0
    while r <= N*2
        ans+=(memo[l]*memo[r])
        l+=1
        r+=1
    end
    puts ans
else
    l=2*N
    r=l-K
    ans=0
    while r>=2
        ans+=(memo[l]*memo[r])
        l-=1
        r-=1
    end
    puts ans
end