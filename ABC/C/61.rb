# https://atcoder.jp/contests/arc061/tasks/arc061_a

# 入力
s = gets.chomp
@cnt = 0

def dfs(s,sum)
    # 最深部まで到達したとき
    if s == nil || s.size == 0
        @cnt += sum
    end
    len = s.size
    (0..len-1).each do |i|
        num = s[0..i].to_i
        dfs(s[i+1..len], sum + num)
    end
end
    
dfs(s,0)
res = @cnt
# 出力
print("#{res}\n")

# 部分和問題
# bit全探索