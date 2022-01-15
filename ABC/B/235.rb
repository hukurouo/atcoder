# https://atcoder.jp/contests/abc235/tasks/abc235_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

i=0
while i+1<N
    if arr[i] >= arr[i+1]
        puts arr[i]
        exit
    end
    i+=1
end
puts arr[i]