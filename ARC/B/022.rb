# https://atcoder.jp/contests/arc022/tasks/arc022_2

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

ans = 0
right = 0
hash = {}
(0...N).each do |left|
    # right を 1 個進めたときに条件を満たすかどうか
    while (right < N && !(hash[arr[right]] == 1)) do
        hash[arr[right]] = 1
        right += 1 
    end
    #  break した状態で right は条件を満たす最大なので、何かする
    ans = [right - left, ans].max

    # left をインクリメントする準備
    if right == left
        right += 1
    else
        hash[arr[left]] = 0
    end
end
puts ans

# しゃくとり法
