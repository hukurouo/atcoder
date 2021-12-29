# https://atcoder.jp/contests/abc099/tasks/abc099_c

N = gets.to_i

list = [1]
a=6
while a < 100000
    list << a
    a = a*6
end
b=9
while b < 100000
    list << b
    b = b*9
end

# list = [1, 6, 9, 36, 81, 216, 729, 1296, 6561, 7776, 46656, 59049]
dp =  Array.new(100001,1000000)
dp[0]=0
i=1
cnt=1
while i<=100000
    costs=[]
    j=0
    while j<list.size
        costs << dp[i-list[j]]
        j+=1
    end
    cost = costs.compact.min + 1
    dp[i] = [cnt,cost].min
    cnt+=1
    i+=1
end
puts dp[N]