# https://atcoder.jp/contests/abc189/tasks/abc189_d

N = gets.to_i
arr = Array.new(N) { gets.chomp }.reverse

ans=0
queue = []
queue << [0, true]
queue << [0, false]
until queue.empty?
    dps, bool = queue.shift
    if dps == N
        ans+=1 if bool
        next
    end
    if arr[dps] == "AND"
        if bool
            queue << [dps+1, true] 
            queue << [dps+1, false] 
        end
    else
        if bool
            ans += 2**(N-dps)
        else
            queue << [dps+1, true]
            queue << [dps+1, false]
        end
    end
end
puts ans