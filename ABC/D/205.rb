# https://atcoder.jp/contests/abc205/tasks/abc205_d

N,Q = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i).sort
query = Array.new(Q) { gets.to_i }

hash={}
i=1
hash[arr[0]] = arr[0]-1
while i<N
    hash[arr[i]] = arr[i]-1-arr[i-1] + hash[arr[i-1]]
    i+=1
end
cn = hash[arr.last]
counts = hash.to_a
query.each do |k|
    if cn < k
        puts arr.last + k - cn
    else
        a,c = counts.bsearch {|a,c| c >= k}
        puts a-1-(c-k)
    end
end