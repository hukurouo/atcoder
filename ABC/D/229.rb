# https://atcoder.jp/contests/abc229/tasks/abc229_d

s = gets.chomp
K = gets.to_i

counts = [0]
(s.size).times do |i|
    if s[i] == "X"
        counts[i+1] = counts[i]
    else
        counts[i+1] = counts[i] + 1
    end
end

right = 0
ans = 0
(0...s.size).each do |left|
    # right を 1 個進めたときに条件を満たすかどうか
    while counts[right] && ((counts[right]-counts[left]) <= K)
        if !counts[right+1]
            right += 1
            break 
        end
        right += 1
    end
    #  break した状態で right は条件を満たす最大なので、何かする
    ans = [ans, right-left-1].max
end
puts ans
            
# しゃくとり法
# 累積和