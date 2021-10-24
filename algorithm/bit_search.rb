@n = gets.to_i
@arr = gets.chomp.split(" ").map(&:to_i);
@k = gets.to_i

def dfs(i,sum)
    # 最深部まで到達したとき
    return sum == @k if i == @n 
    # @arr[i]を使わない場合
    return true if (dfs(i+1, sum))
    # @arr[i]を使う場合
    return true if (dfs(i+1, sum+@arr[i]))

    return false
end

res = ""
if dfs(0,0)
    res = "Yes"
else
    res = "No"
end

# 出力
print("#{res}\n")

# bit全探索

