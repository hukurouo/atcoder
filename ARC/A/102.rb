# https://atcoder.jp/contests/arc102/tasks/arc102_a

N,K = gets.chomp.split.map(&:to_i)

if K%2==0
    ans = (N/K)**3
    cnt=0
    (1..N).each do |i|
       cnt+=1 if i%K == K/2
    end
    puts ans + cnt**3
else
    puts (N/K)**3
end