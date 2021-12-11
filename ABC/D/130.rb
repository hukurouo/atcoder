# https://atcoder.jp/contests/abc130/tasks/abc130_d

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

ans = 0
right = 0
sum = 0
(0...N).each do |left|
    # right を 1 個進めたときに条件を満たすかどうか
    while (right < N && sum < K) do
        sum += arr[right]
        right += 1
    end
    #  break した状態で right は条件を満たす最大なので、何かする
    if sum >= K
        ans += (N-right)+1
        sum -= arr[left]
    end
    # left をインクリメントする準備
    if right == left
        right += 1
    else
        
    end
end
puts ans

# しゃくとり法