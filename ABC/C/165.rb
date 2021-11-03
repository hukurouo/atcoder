# https://atcoder.jp/contests/abc165/tasks/abc165_c

N,M,Q = gets.chomp.split.map(&:to_i);
arr = Array.new(Q) { gets.split.map(&:to_i) } 
ans = 0

#@combinations = [*1..M].repeated_combination(N)

@combinations = []
@all = []
def dfs(dps = 0, num = 1)
    if dps == N
        @combinations << Marshal.load(Marshal.dump(@all))
        return
    end
    (num..M).each do |i|
        @all.push i
        dfs(dps+1, i)
        @all.pop
    end
end
dfs()

@combinations.each do |comb|
    t_ans = 0
    arr.each do |a|
        t_ans += a[3] if comb[a[1]-1] - comb[a[0]-1] == a[2]
    end
    ans = [ans, t_ans].max
end

puts ans

# 組み合わせ全探索
# 再帰関数を用いた全探索
# 再帰関数（配列）
