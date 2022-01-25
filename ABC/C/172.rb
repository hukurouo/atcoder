# https://atcoder.jp/contests/abc172/tasks/abc172_c

N,M,K = gets.chomp.split.map(&:to_i)
arr_a = gets.chomp.split.map(&:to_i)
arr_b = gets.chomp.split.map(&:to_i)

count_a = [0]
count_b = [0]
i=0
while i<N
    la = count_a[-1]
    if la + arr_a[i] > K
        break
    end
    count_a << la + arr_a[i]
    i+=1
end
i=0
while i<M
    la = count_b[-1]
    if la + arr_b[i] > K
        break
    end
    count_b << la + arr_b[i]
    i+=1
end

ans=0
i=0
n = count_a.size
nb = count_b.size
while i<n
    t = count_a[i]
    remain = K-t
    b = count_b.bsearch_index {|x| x > remain} || nb
    ans = [ans, i+b-1].max
    i+=1
end
puts ans