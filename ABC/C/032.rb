# https://atcoder.jp/contests/abc032/tasks/abc032_c

N,K = gets.chomp.split.map(&:to_i);
arr = Array.new(N) { gets.to_i }

if arr.include? 0
    puts N
    exit
end

ans = 0
right = 0
sum = 1
(0...N).each do |left|
    # right を 1 個進めたときに条件を満たすかどうか
    while (right < N && sum*arr[right] <= K) do
        sum *= arr[right]
        right += 1
    end
    #  break した状態で right は条件を満たす最大なので、何かする
    ans = [ans, right-left].max

    # left をインクリメントする準備
    if right == left
        right += 1
    else
        sum /= arr[left]
    end
end
puts ans

# しゃくとり法
