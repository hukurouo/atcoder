# https://atcoder.jp/contests/apc001/tasks/apc001_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)
arr2 = gets.chomp.split.map(&:to_i)

def ceil(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end

num = arr2.sum - arr.sum

if arr == arr2
    puts "Yes"
    exit
end
if num <= 0
    puts "No"
    exit
end
i=0
while i < N
    if arr[i] >= arr2[i]
        i+=1
        next 
    end
    r = arr2[i]-arr[i]
    num -= ceil(r,2)
    if num < 0
        puts "No"
        exit
    end
    i+=1
end
puts "Yes"