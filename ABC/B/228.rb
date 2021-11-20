# https://atcoder.jp/contests/abc228/tasks/abc228_b

N,M = gets.chomp.split.map(&:to_i);
arr = gets.chomp.split.map(&:to_i);

hash = {}
hash[M] = 1
c = M
cnt = 1

N.times do |i|
    if hash[arr[c-1]]
        puts cnt
        exit
    else
        cnt+=1
        hash[arr[c-1]] = 1
        c = arr[c-1]
    end
end