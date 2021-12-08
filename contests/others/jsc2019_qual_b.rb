# https://atcoder.jp/contests/jsc2019-qual/tasks/jsc2019_qual_b

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)*2

list = []
(0...2*N).each do |i|
    t = 0
    ((i+1)...2*N).each do |j|
        if arr[i] > arr[j]
            t += 1
        end
    end
    list << t
end

MOD = 10**9 + 7
ans = 0
N.times do |i|
    # 等差数列
    # 初項
    a1 = list[N+i]
    # 差
    d = list[i] - a1
    # 末項
    an = a1 + (K-1)*d
    # 和
    s = (a1 + an)*K/2 % MOD
    ans += s
end
puts ans%MOD
