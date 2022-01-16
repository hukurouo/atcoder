# https://atcoder.jp/contests/abc197/tasks/abc197_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

ans=Float::INFINITY
[0, 1].repeated_permutation(N-1).each do |bits|
    xor=0
    t = arr[0]
    i=0
    while i<N-1
        if bits[i]==1
            xor = xor ^ t
            t = arr[i+1]
        else
            t = t | arr[i+1]
        end
        i+=1
    end
    xor ^= t
    ans = [ans,xor].min
end
puts ans