# https://atcoder.jp/contests/abc147/tasks/abc147_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

MOD=10**9+7
ans=0
60.times do |i|
    cnt0=0
    cnt1=0
    arr.each do |num|
        if num[i] == 0
            cnt0+=1
        else
            cnt1+=1
        end
    end
    ans += cnt0 * cnt1 * ((1<<i)%MOD)
    ans %= MOD
end
puts ans

# XOR
# 桁毎に計算
# https://drken1215.hatenablog.com/entry/2020/04/25/032000