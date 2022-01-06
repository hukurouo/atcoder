# https://atcoder.jp/contests/abc048/tasks/arc064_a

N,X = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

cnt=0
i=1
while i<N
    t=arr[i]+arr[i-1]-X
    if t>0
        if arr[i] >= t
            arr[i] -= t
            cnt += t
            t=0
        else
            t -= arr[i]
            cnt += arr[i]
            arr[i] = 0
        end
    end
    if t>0
        arr[i-i] -= t
        cnt += t
    end
    i+=1
end

puts cnt