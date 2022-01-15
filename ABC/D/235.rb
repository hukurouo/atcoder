# https://atcoder.jp/contests/abc235/tasks/abc235_d

a,N = gets.chomp.split.map(&:to_i)

dp = Array.new(N*2)

queue = []
queue << [1,0]
until queue.empty?
    n, cost = queue.shift
    next if dp[n] && dp[n] <= cost
    next if n > 2*N
    dp[n] = cost
    queue << [n*a, cost+1]
    if n>10 && n%10!=0
        s = n.to_s
        s = s[-1] + s[0..-2]
        queue << [s.to_i, cost+1]
    end
end

if dp[N]
    puts dp[N]
else
    puts -1
end