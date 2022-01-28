# https://atcoder.jp/contests/abc189/tasks/abc189_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

ans=0
l=0
while l<N
    r=l
    x = arr[l]
    while r<N
        x = [x,arr[r]].min
        break if x*(N-l) < ans
        ans = [ans, x*(r-l+1)].max
        r+=1
    end
    l+=1
end
puts ans