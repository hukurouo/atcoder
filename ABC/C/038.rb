# https://atcoder.jp/contests/abc038/tasks/abc038_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

ans = 0
right = 0
sum = 1
(0...N).each do |left|
    # right を 1 個進めたときに条件を満たすかどうか
    while (0 < right && right < N && arr[right-1] < arr[right]) do
        right += 1
    end
    #  break した状態で right は条件を満たす最大なので、何かする
    ans += (right - left + 1)

    # left をインクリメントする準備
    if right == left
        right += 1
    else
        
    end
end
puts ans

# しゃくとり法
