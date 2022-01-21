# https://atcoder.jp/contests/abc167/tasks/abc167_d
 
N,k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

memo={}
i=0
list = []
list << i+1
memo[1] = true
while true
    n = arr[i]
    memo[n] = true
    list << n
    i = n-1 # next
    if memo[arr[i]]
        list << arr[i]
        break
    end
end
l = list.pop
while true
    if k==0
        puts list[0]
        exit
    end
    if list[0] != l
        k-=1
        list.shift
    else
        n = list.size
        m = k%n
        puts list[m]
        exit
    end
end