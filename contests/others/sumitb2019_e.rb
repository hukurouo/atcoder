# https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_e

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

MOD=10**9+7
memo=[0,0,0]
ans=1
i=0
while i<N
    num = arr[i]
    t = memo.count(num)
    ans*=t
    ans = ans%MOD
    if memo[0]==num
        memo[0]+=1
    elsif memo[1]==num
        memo[1]+=1
    else
        memo[2]+=1
    end
    i+=1
end
puts ans%MOD