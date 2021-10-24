# https://atcoder.jp/contests/abc079/tasks/abc079_c

# 入力
arr = gets.chomp.split(//).map(&:to_i);
@ans = ""

def dfs(i,sum,opes,arr)
    # 最深部まで到達したとき
    if i == 3
        if sum == 7
            a,b,c,d = arr
            @ans = a.to_s + opes[0] + b.to_s + opes[1] + c.to_s + opes[2] + d.to_s + "=7"
        end
        return
    end
    return if @ans != ""
    dfs(i+1, sum+arr[i+1], opes+["+"], arr)
    dfs(i+1, sum-arr[i+1], opes+["-"], arr)
end

dfs(0,arr[0],[],arr)
res = @ans

# 出力
print("#{res}\n")

# bit全探索