# https://atcoder.jp/contests/abc204/tasks/abc204_c

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

hash={}
arr.each do |a,b|
    hash[a]||=[]
    hash[a]<<b
end

ans = 0
(1..N).each do |n|
    queue = [n]
    cnt = 0
    memo = Array.new(N)
    until queue.empty?
        n = queue.shift
        next if memo[n-1]
        memo[n-1] = true
        cnt += 1
        hash[n]||=[]
        hash[n].each do |to|
            queue << to
        end
    end
    ans += cnt
end
puts ans