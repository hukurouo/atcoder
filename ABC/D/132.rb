# https://atcoder.jp/contests/abc132/tasks/abc132_d

N,K = gets.chomp.split.map(&:to_i)

c=[[]]
c[0][0] = 1
i=1
MOD=10**9+7
while i<2001
    c[i] = []
    c[i][0] = 1
    c[i][i] = 1
    j=1
    while j < i
        c[i][j] = c[i-1][j-1] + c[i-1][j]
        c[i][j] = c[i][j]%MOD
        j+=1
    end
    i+=1
end
# パスカルの三角形

(1..K).each do |i|
    if c[N-K+1][i] && c[K-1][i-1]
        puts c[N-K+1][i] * c[K-1][i-1] % MOD
    else
        puts 0
    end
end