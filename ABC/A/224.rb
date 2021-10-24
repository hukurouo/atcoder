# https://atcoder.jp/contests/abc224/tasks/abc224_a

# 入力
s = gets.chomp
len = s.size
res = ""
if s[len-3,len] == "ist"
    res = "ist"
elsif s[len-2,len] == "er"
    res = "er"
end
# 出力
print("#{res}\n")