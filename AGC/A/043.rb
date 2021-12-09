# https://atcoder.jp/contests/agc043/tasks/agc043_a

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.split(//) }

dp = Array.new(H) { Array.new(W,0) }
(0...H).each do |y|
    (0...W).each do |x|
        left = arr[y][x-1] if x-1 >= 0
        top = arr[y-1][x] if y-1 >= 0
        c = arr[y][x]
        if x==0 && y==0
            if arr[y][x] == "#"
                dp[y][x] = 1
            else
                dp[y][x] = 0
            end
        else
            t = 10000
            if left
                if left == "." && c == "#"
                    t = [t, dp[y][x-1]+1].min
                else
                    t = [t, dp[y][x-1]].min
                end
            end
            if top
                if top == "." && c == "#"
                    t = [t, dp[y-1][x]+1].min
                else
                    t = [t, dp[y-1][x]].min
                end
            end 
            dp[y][x] = t
        end
    end
end
puts dp.last.last