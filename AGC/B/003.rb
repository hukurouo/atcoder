# https://atcoder.jp/contests/agc003/tasks/agc003_b

N = gets.to_i
arr = Array.new(N) { gets.to_i }

ans=0
i=0
t=0
while i<N
    t += arr[i]
    if arr[i] == 0
        ans += t/2
        t=0
    end
    i+=1
end
ans += t/2

puts ans