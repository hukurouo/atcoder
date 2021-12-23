# https://atcoder.jp/contests/abc129/tasks/abc129_d

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

dpl = Array.new(H+2) { Array.new(W+2,0) }
dpr = Array.new(H+2) { Array.new(W+2,0) }
dpu = Array.new(H+2) { Array.new(W+2,0) }
dpd = Array.new(H+2) { Array.new(W+2,0) }
ans=0
i=1
while i < H+1
    j=1
    while j < W+1
        if arr[i-1][j-1] == "#"
            j+=1
            next 
        end 
        dpl[i][j] = dpl[i][j-1] + 1
        dpu[i][j] = dpu[i-1][j] + 1
        j+=1
    end
    i+=1
end
i=H
while i > 0
    j=W
    while j > 0
        if arr[i-1][j-1] == "#"
            j-=1
            next 
        end
        dpr[i][j] = dpr[i][j+1] + 1
        dpd[i][j] = dpd[i+1][j] + 1
        ans = [ans, dpr[i][j]+dpl[i][j]+dpu[i][j]+dpd[i][j] - 3].max
        j-=1
    end
    i-=1
end

puts ans

# グリッド問題